==========================================================================
config.json (Chef Delivery)
==========================================================================

The ``config.json`` file is located at the root of the ``.delivery`` folder that is located in a project managed by |chef delivery|. The structure of the ``config.json`` file is similar to:

.. code-block:: json

   {
     "version": "2",
     "build_cookbook": {
       "name": "build-cookbook",
       "path": ".delivery/build-cookbook"
     },
     "skip_phases": [
       "quality",
       "security"
     ],
     "delivery-truck":{
       "publish": {
         "github": "chef/chef-web-docs"
       }
     }
   }
