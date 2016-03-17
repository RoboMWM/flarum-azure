 # Invoke Composer in the deployment directory
 rm -rf $DEPLOYMENT_TARGET
 echo Invoking composer install in deployment directory $DEPLOYMENT_TARGET
 composer create-project flarum/flarum $DEPLOYMENT_TARGET --stability=beta --no-interaction
 cd $DEPLOYMENT_TARGET
 echo chmod'ing the following directory
 pwd
 chmod -R 755 .
 ls -a
 chmod -R 755 *
 ls -a
 chmod -R 755 *.*
 ls -a
 chmod -R $DEPLOYMENT_TARGET
 
echo "Finished successfully."
