<?php

namespace App\Http\Controllers;

use App\Jobs\RunPythonScript;
use Illuminate\Http\Request;
use App\Model\Resident;
use Carbon\Carbon;
use App\Http\Requests\ResidentRequest;

class ResidenceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $residence_list = Resident::all();
        return view('residence.index', compact('residence_list'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('residence.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ResidentRequest $request){

            $residence = new Resident;

            //image Request
            $img =  $request->get('image');
            $folderPath = storage_path("app/public/residence/");
            $image_parts = explode(";base64,", $img);
            foreach ($image_parts as $key => $image){
                $image_base64 = base64_decode($image);
            }
            $fileName = uniqid() . '.png';
            $file = $folderPath . $fileName;
            file_put_contents($file, $image_base64);


            //resident Number
            $year = Carbon::now()->year;
            $resident_cnt = Resident::all()->count();
            $resident_cnt = $resident_cnt + 1;

            $resident_number = 'STO' . '-' .  $year . '-' . $resident_cnt;

            $residence->res_num = $resident_number;
            $residence->image = $fileName;
            $residence->last_name = $request->last_name;
            $residence->first_name = $request->first_name;
            $residence->middle_name = $request->middle_name;
            $residence->suffix_name = $request->suffix_name;
            $residence->gender = $request->gender;
            $residence->birthday = $request->birthday;
            $residence->birthplace= $request->birthplace;
            $residence->civil_status = $request->civil_status;
            $residence->house_number = $request->house_number;
            $residence->purok = $request->purok;
            $residence->street = $request->street;
            $residence->occupation = ($request->occupation === 'N/A') ? 'None' : $request->occupation;;
            $residence->student = ($request->student === 'N/A') ? 'Not Applicable' : $request->student;
            //added
            $residence->isOccupation = ($request->occupation === 'None') ? 'No' : 'Yes';
            $residence->isBeneficiaries = ($request->membership_prog === 'None') ? 'No' : 'Yes';



            $residence->type_of_house = $request->type_of_house;
            $residence->pwd = $request->pwd;
            $residence->membership_prog = $request->membership_prog;
            $residence->save();

            // $request->validate([
            //     'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            //   ]);

            // if ($request->file('image')) {
            //     $imagePath = $request->file('image');
            //     $imageName = $imagePath->getClientOriginalName();
            //     $path = $request->file('image')->storeAs('residence', $imageName, 'public');
            //   }
            //   $residence->image = $imageName;
            //   $residence->path = '/storage/'.$path;

            //This method runs the algorithm
            RunPythonScript::dispatch();

            return redirect()->route('residence.index')->withStatus('Resident Register Succesfully!');

            // ;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $resident = Resident::with('business')->findOrfail($id);
        return view('residence.show', compact('resident'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $resident = Resident::findorfail($id);
        return view('residence.edit',compact('resident'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
            $resident = Resident::findorfail($id);

            if ($request->image != null)
            {

                $img =  $request->get('image');
                $folderPath = storage_path("app/public/residence/");
                $image_parts = explode(";base64,", $img);

                foreach ($image_parts as $key => $image){
                    $image_base64 = base64_decode($image);
                }

                $fileName = uniqid() . '.png';
                $file = $folderPath . $fileName;
                file_put_contents($file, $image_base64);

                $resident->image = $fileName;
            }



            $resident->last_name = $request->last_name;
            $resident->first_name = $request->first_name;
            $resident->middle_name = $request->middle_name;
            $resident->gender = $request->gender;
            $resident->birthday = $request->birthday;
            $resident->birthplace= $request->birthplace;
            $resident->civil_status = $request->civil_status;
            $resident->house_number = $request->house_number;
            $resident->purok = $request->purok;
            $resident->street = $request->street;
            $resident->occupation = $request->occupation;
            $resident->student = $request->student;
            $resident->type_of_house = $request->type_of_house;
            $resident->pwd = $request->pwd;
            $resident->membership_prog = $request->membership_prog;
            $resident->save();

             //This method runs the algorithm
             RunPythonScript::dispatch();



            return redirect()->route('residence.show',$id)->withStatus('Resident Update Succesfully!');

             //This method runs the algorithm

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $resident = Resident::findOrfail($id);


        $resident ->delete();

        return redirect()->route('residence.index')->with('swal_delete', 'Residence added sucessfully!');
    }

    public function import()
    {
         //This method runs the algorithm
         RunPythonScript::dispatch();
        return view('residence.import');
    }
}

