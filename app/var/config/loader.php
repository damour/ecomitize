<?php

$loader = new Phalcon\Loader();

$loader->registerDirs(
    array(
        ROOT_PATH . "/app/validators/",
    )
);

$loader->register();