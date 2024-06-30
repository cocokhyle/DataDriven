<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;

class ResidenceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('residents')->insert([

            'res_num' => '123',
            'last_name' => 'Huerte',
            'first_name' => 'Felix',
            'middle_name' => 'Laping',
            'gender' => 'Male',
            'birthday' => Carbon::create('1994', '12', '19'),
            'birthplace' => 'Los Banos',
            'civil_status' => 'Married',

            'house_number' => '13',
            'purok' => '4',
            'street' => 'The Belleparc',

            'occupation' => 'Vendor',
            'Student' => 'Elementary',
            'type_of_house' => 'Owned',

            'pwd' => 'Yes',
            'membership_prog' => 'TUPAD',
            'image' => 'felix.jpg'


        ]);
    }
}
