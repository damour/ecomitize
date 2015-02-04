<?php

use Phalcon\Mvc\Model\Validator\Email as EmailValidator;

class Emails extends \Phalcon\Mvc\Collection
{
    public $email;
    public $created_at;

    public function beforeCreate()
    {
        $this->created_at = date('Y-m-d H:i:s');
    }

    public function validation()
    {
        $this->validate(new EmailValidator(array(
            'field' => 'email',
        )));
        
        $this->validate(new Uniqueness(
            array(
                "field"   => "email",
                "message" => 'Email already exists'
            )
        ));
        
        return $this->validationHasFailed() != true;
    }
    
    public static function getLastEmails()
    {
        return self::find([
            "limit" => 5,
            "sort" => array("created_at" => -1),
        ]);
    }
}
