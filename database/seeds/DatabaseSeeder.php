<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);


        App\Role::create([
            'name' => 'Administrador',
            'description' => 'no se'
        ]);

        App\Role::create([
            'name' => 'Edil',
            'description' => 'no se'
        ]);

        App\Role::create([
            'name' => 'Ciudadano',
            'description' => 'no se'
        ]);


        App\Locality::create([
            'name' => 'Puente Aranda',
        ]);

        App\Entity::create([
            'name' => 'Entidad 1',
            'phone_contact' => '301301301',
            'email' => 'entidad@email.com',
            'country_id' => 48
        ]);

    }
}
