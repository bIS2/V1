<?php

use Mockery as m;

trait AuthorityControllerHelpers
{

    protected $user;
    protected $userAttributes = [];
    protected $authority;

    /**
     * return an Authentificate User with role(s)
     * @param  \Illuminate\Database\Eloquent\Collection $roles Roles to add to the user. Default to null
     * @return UserInterface
     */
    protected function getUser($roles = null)
    {
        $user = m::mock('Eloquent', 'AcUser')->makePartial();
        $userAttributes = $this->userAttributes;
        $userAttributes['roles'] = $roles;
        foreach ($userAttributes as $key => $value) {
            $user->$key = $value;
        }

        $user->shouldReceive('save')->andReturn(true);
        $this->be($user); // Equivalent to Auth::login($user);
        return $user;
    }

    /**
     * return an Authentificate User with role(s)
     * @param  string|array $rolesNames Role(s) to add to the user
     * @return UserInterface
     */
    protected function getUserWithRole($rolesNames = null)
    {
        $rolesNames = (array) $rolesNames;
        $roles = new \Illuminate\Database\Eloquent\Collection();
        foreach ($rolesNames as $index => $roleName) {
            $role = m::mock('Eloquent', 'AcRole')->makePartial();
            $roleAttributes = ['id' => $index+1, 'name' => $roleName];
            foreach ($roleAttributes as $key => $value) {
                $role->$key = $value;
            }

            $roles->add($role);
        }

        return $this->getUser($roles);
    }

    protected function getAuthority($user)
    {
        $authority = new Efficiently\AuthorityController\Authority($user);
        $fn = Config::get('authority-controller::initialize', null);

        if ($fn) {
            $fn($authority);
        }
        App::instance('authority', $authority);

        return $authority;
    }

    public function assertCan($action, $resource, $resourceValue = null)
    {
        $this->assertTrue($this->authority->can($action, $resource, $resourceValue));
    }

    public function assertCannot($action, $resource, $resourceValue = null)
    {
        $this->assertTrue($this->authority->cannot($action, $resource, $resourceValue));
    }

    public function setProperty($object, $propertyName, $value)
    {
        if (property_exists($object, $propertyName)) {
            $reflection = new ReflectionProperty($object, $propertyName);
            $reflection->setAccessible(true);
            $reflection->setValue($object, $value);
        } else {
            $object->$propertyName = $value;
        }
    }

    public function getProperty($object, $propertyName)
    {
        if (property_exists($object, $propertyName)) {
            $reflection = new ReflectionProperty($object, $propertyName);
            $reflection->setAccessible(true);
            return $reflection->getValue($object);
        } else {
            return null;
        }
    }

    public function invokeMethod($object, $methodName, $values = [])
    {
        $values = (array) $values;
        if (method_exists($object, $methodName)) {
            $reflection = new ReflectionMethod($object, $methodName);
            $reflection->setAccessible(true);
            return $reflection->invokeArgs($object, $values);
        } else {
            return call_user_func_array([$object, $methodName], $values);
        }
    }

}
