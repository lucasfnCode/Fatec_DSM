<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitee32e4acbcc9f0379dc59ef62e659ea0
{
    public static $prefixLengthsPsr4 = array (
        'B' => 
        array (
            'Backend\\Api\\' => 12,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Backend\\Api\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitee32e4acbcc9f0379dc59ef62e659ea0::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitee32e4acbcc9f0379dc59ef62e659ea0::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitee32e4acbcc9f0379dc59ef62e659ea0::$classMap;

        }, null, ClassLoader::class);
    }
}
