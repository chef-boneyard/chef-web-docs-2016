.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The service that |runit| will manage is defined as an attribute of the container. This may be done by editing the ``first-boot.json`` file or by adding an attribute to a cookbook.

For example, the ``first-boot.json`` file may look similar to:

.. code-block:: javascript

   {
     "run_list": [
       "recipe[recipe_name]"
     ],
     "container_service": {
       "service_resource_name": {
         "command": "service_run_command"
       }
     }
   }

where:

* ``recipe_name`` is the name of the recipe
* ``service_resource_name`` is the service resource name that will be managed by |runit|
* ``service_run_command`` is the command that will be executed by |runit| to manage the service

For example, if the service is |nginx|, the ``container_service`` paramaters would be similar to:

.. code-block:: javascript

   {
     "run_list": [
       "recipe[nginx]"
     ],
     "container_service": {
       "nginx": {
         "command": "/usr/sbin/nginx -c /etc/conf/nginx.conf"
       }
     }
   }

The container service setting may also be specified using an attributes file in a cookbook. For example:

.. code-block:: ruby

   default['container_service']['service_resource_name']['command'] = 'service_run_command'

or, using the same |nginx| example as above:

.. code-block:: ruby

   default['container_service']['nginx']['command'] = '/usr/sbin/nginx -c /etc/conf/nginx.conf'
