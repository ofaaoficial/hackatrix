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
            'city_id' => 495,
        ]);


        App\Entity::create([
            'name' => 'Administracion del sistema',
            'phone_contact' => '301301301',
            'email' => 'oscarfamado@email.com',
            'country_id' => 48
        ]);

        App\Entity::create([
            'name' => 'Entidad 1',
            'phone_contact' => '301301301',
            'email' => 'entidad@email.com',
            'country_id' => 48
        ]);

        App\User::create([
            'name' => 'Oscar',
            'email' => 'oscarfamado@gmail.com',
            'password' => bcrypt('oscar123'),
            'last_name' => 'Amado',
            'entity_id' => 1,
            'rol_id' => 1,
            'document' => '1022445546',
        ]);

    }
}
