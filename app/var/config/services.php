<?php

$di->set('mongo', function() {
    $mongo = new MongoClient();
    return $mongo->selectDb("phalcon");
}, true);

$di->set('collectionManager', function(){
    return new Phalcon\Mvc\Collection\Manager();
}, true);