<?php

use Phalcon\Mvc\Model\Validator,
    Phalcon\Mvc\Model\ValidatorInterface;

class Uniqueness extends Validator implements ValidatorInterface
{
    /**
     * Validates that the record is unique
     *
     * @param Phalcon\Mvc\Collection $record
     * @return boolean
     */
    public function validate($record)
    {
        $field = $this->getOption('field');
        
        $count = $record::count(array(
            array($field => $record->readAttribute($field))
        ));
        
        if ($count > 0) {
            $message = $this->getOption('message');
            $this->appendMessage($message, $field);
            
            return false;
        }
        
        return true;
    }
}
