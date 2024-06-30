<?php

use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'email' => 'flhuerte@gmail.com',
            'name' => 'Felix Huerte',
            'password' => Hash::make('stotomas123'),
        ]);
    }
}
