.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


If you are familiar with |capistrano|, the following examples should help you know when to use the various callbacks that are available in |chef|. If you are not familiar with |capistrano|, then follow the semantic names of these callbacks to help you determine when to use each of the callbacks within a recipe that is built with the |resource deploy| resource.

The following example shows how |capistrano| does a ``deploy`` process, and then where the callbacks in |chef| fit within the process that is used by the |resource deploy| resource::

   capistrano                      Chef
   --------------------------      --------------------------
     deploy                          deploy
   
       update                   
   
         update code            
   
           finalize_update
                                       before_symlink
         create_symlink                
                                       before_restart
       restart                  
                                       after_restart

and then the following example shows the ``deploy:migrations`` process::

   capistrano                      Chef
   --------------------------      --------------------------
     deploy:migrations               deploy
   
       update                   
   
         update code            
   
           finalize_update     
                                       before_migrate
         migrate
                                       before_symlink
         create_symlink                
                                       before_restart
       restart                  
                                       after_restart



