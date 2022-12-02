<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $role1 = Role::create([
            'name' => 'admin'
        ]);

        $role2 = Role::create([
            'name' => 'teacher'
        ]);

        $role3 = Role::create([
            'name' => 'student'
        ]);
    }
}
