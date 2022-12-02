<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //permission for exams
        Permission::create(['name' => 'exams.index']);
        Permission::create(['name' => 'exams.create']);
        Permission::create(['name' => 'exams.edit']);
        Permission::create(['name' => 'exams.delete']);

        //permission for subjects
        Permission::create(['name' => 'subjects.index']);
        Permission::create(['name' => 'subjects.create']);
        Permission::create(['name' => 'subjects.edit']);
        Permission::create(['name' => 'subjects.delete']);

        //permission for questions
        Permission::create(['name' => 'questions.index']);
        Permission::create(['name' => 'questions.create']);
        Permission::create(['name' => 'questions.edit']);
        Permission::create(['name' => 'questions.delete']);

         //permission for images
         Permission::create(['name' => 'images.index']);
         Permission::create(['name' => 'images.create']);
         Permission::create(['name' => 'images.delete']);
 
         //permission for videos
         Permission::create(['name' => 'videos.index']);
         Permission::create(['name' => 'videos.create']);
         Permission::create(['name' => 'videos.edit']);
         Permission::create(['name' => 'videos.delete']);

         //permission for audios
         Permission::create(['name' => 'audios.index']);
         Permission::create(['name' => 'audios.create']);
         Permission::create(['name' => 'audios.edit']);
         Permission::create(['name' => 'audios.delete']);

         //permission for documents
         Permission::create(['name' => 'documents.index']);
         Permission::create(['name' => 'documents.create']);
         Permission::create(['name' => 'documents.edit']);
         Permission::create(['name' => 'documents.delete']);

        //permission for roles
        Permission::create(['name' => 'roles.index']);
        Permission::create(['name' => 'roles.create']);
        Permission::create(['name' => 'roles.edit']);
        Permission::create(['name' => 'roles.delete']);

        //permission for permissions
        Permission::create(['name' => 'permissions.index']);

        //permission for users
        Permission::create(['name' => 'users.index']);
        Permission::create(['name' => 'users.create']);
        Permission::create(['name' => 'users.edit']);
        Permission::create(['name' => 'users.delete']);
    }
}
