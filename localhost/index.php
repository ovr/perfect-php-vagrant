<?php

echo "PHP Version: " . phpversion() . " </br>";

if (extension_loaded('Phalcon')) {
    $ext = new ReflectionExtension('phalcon');
    echo "Phalcon Version: " . $ext->getVersion() . "</br>";
}

if (extension_loaded('Lynx')) {
    $ext = new ReflectionExtension('lynx');
    echo "Lynx Version: " . $ext->getVersion() . "</br>";
}