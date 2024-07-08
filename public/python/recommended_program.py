import numpy as np
from keras.models import load_model
import pickle
import mysql.connector
import os
import pandas as pd
from datetime import datetime

# Get the current directory of the script
current_dir = os.path.dirname(os.path.abspath(__file__))

# Full paths to the model and encoders
model_path = os.path.join(current_dir, 'rnn_recommendation_model.h5')
encoders_path = os.path.join(current_dir, 'label_encoders.pkl')
scaler_path = os.path.join(current_dir, 'scaler.pkl')

model = load_model(model_path)

with open(encoders_path, 'rb') as f:
    label_encoders = pickle.load(f)

with open(scaler_path, 'rb') as f:
    scaler = pickle.load(f)

def calculate_age(birthdate):
    today = datetime.today()
    return today.year - birthdate.year - ((today.month, today.day) < (birthdate.month, birthdate.day))

def preprocess_data_from_db(data):
    # Encode categorical features
    for col, le in label_encoders.items():
        data[col] = le.transform(data[col])

    # Normalize numerical features
    data['birthday'] = scaler.transform(data[['birthday']])

    # Convert to a NumPy array
    X = data[['birthday', 'gender', 'student', 'pwd', 'isOccupation', 'isBeneficiaries']].values

    return X

def recommend_program(new_resident_array):
    # Get the model's prediction
    prediction = model.predict(new_resident_array)[0]
    recommended_program_index = np.argmax(prediction)
    recommended_program_id = recommended_program_index + 1  # Adjust for 0-based indexing

    return recommended_program_id

# Connect to MySQL database
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",  # Replace with your MySQL password
    database="laravel"
)

if conn.is_connected():
    query = "SELECT id, birthday, gender, student, pwd, isOccupation, isBeneficiaries FROM residents WHERE programID IS NULL"
    cursor = conn.cursor()
    cursor.execute(query)
    data = cursor.fetchall()

    # Process each row individually
    for row in data:
        resident_id = row[0]
        birthdate = row[1]
        age = calculate_age(birthdate)
        resident_data = pd.DataFrame([[age, row[2], row[3], row[4], row[5], row[6]]], columns=['birthday', 'gender', 'student', 'pwd', 'isOccupation', 'isBeneficiaries'])
        X = preprocess_data_from_db(resident_data)
        recommended_program_id = recommend_program(X)

        # Convert recommended_program_id to a native Python integer
        recommended_program_id = int(recommended_program_id)

        print(f"Id: {resident_id}, ProgramId: {recommended_program_id}")

        # Update the database with the recommended program ID
        update_query = "UPDATE residents SET programID = %s WHERE id = %s"
        cursor.execute(update_query, (recommended_program_id, resident_id))
        conn.commit()

    cursor.close()
    conn.close()
else:
    print("Connection to MySQL database failed")
