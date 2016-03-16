#!/bin/bash
##################################################################################################################################
 # Download Composer
 # ----------
 echo Downloading Composer
 curl -sS https://getcomposer.org/installer | php
 
 ##################################################################################################################################
 # Dependency install
 # ----------
  
 # Invoke Composer in the deployment directory
 rm -rf $DEPLOYMENT_TARGET
 echo Invoking composer install in deployment directory $DEPLOYMENT_TARGET
 php composer.phar create-project flarum/flarum $DEPLOYMENT_TARGET --stability=beta --no-interaction
 
echo "Finished successfully."
