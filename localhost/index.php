<?php

echo "PHP Version: " . phpversion() . " </br>";

if (extension_loaded('Phalcon')) {
    $ext = new ReflectionExtension('phalcon');
    echo "Phalcon Version: " . $ext->getVersion();
}