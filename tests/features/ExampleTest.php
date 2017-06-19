<?php

class ExampleTest extends FeatureTestCase
{
    function test_basic_example()
    {
        $user = factory(\App\User::class)->create([
            'name' => 'Lenin Che',
            'email' => 'leninchek@gmail.com',
        ]);
        
        $this->actingAs($user, 'api')
            ->visit('api/user')
            ->see('Lenin Che')
            ->see('leninchek@gmail.com');
    }
}
