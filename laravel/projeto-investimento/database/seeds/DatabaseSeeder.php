<?php

use Illuminate\Database\Seeder;
use App\Entities\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'cpf' => '00011100011', 
            'name' => 'João',    
            'phone' => '3512341234',   
            'birth' => '2020-10-01',   
            'gender' => 'M',  
            'email' => 'joao@cmail.com',   
            'password' => env('PASSWORD_HASH') ? bcrypt('123456') : '123456',
            
        ]);
        // $this->call(UserSeeder::class);
    }
}
