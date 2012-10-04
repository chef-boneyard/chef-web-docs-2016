.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Attributes are typically stored in a recipe using a multi-level hash or array. For example, a group of attributes for web servers might be:

.. code-block:: ruby

   override_attributes(
     :apache => {
       :listen_ports => [ 80 ],
       :prefork => {
         :startservers => 20,
         :minspareservers => 20,
         :maxspareservers => 40
       }
     }
   )

But what if all of the web servers aren't the same? What if some of the web servers required a single attribute to have a different value? You could store these settings in two locations, once just like above and once just like below:

.. code-block:: ruby

   override_attributes(
     :apache => {
       :listen_ports => [ 80 ],
       :prefork => {
         :startservers => 30,
         :minspareservers => 20,
         :maxspareservers => 40
       }
     }
   )

But that is not very efficient, especially since most of them are identical. The deep merge capabilities of |chef| enable attributes to be layered across recipes and cookbooks. This allows an attribute to be reused across nodes, yet still provide a way for certain attributes (with a higher attribute precedence) to be applied only when they are supposed to be. For example, a role named ``baseline.rb``:

.. code-block:: ruby

   name "baseline"
   description "The most basic role for all configurations"
   run_list "recipe[baseline]"
 
   override_attributes(
     :apache => {
       :listen_ports => [ 80 ],
       :prefork => {
         :startservers => 20,
         :minspareservers => 20,
         :maxspareservers => 40
       }
     }
   )

and then a role named ``web.rb``:

.. code-block:: ruby

   name "web"
   description "Web server config"
   run_list "role[baseline]"
 
   override_attributes(
     :apache => {
       :prefork => {
         :startservers => 30
       }
     }
   )

Both of these files are similar. They share the same structure. The ``web.rb`` references the ``baseline.rb`` role. The ``web.rb`` file only provides a value for one attribute: ``:startservers``. When |chef| compares these attributes, the deep merge feature will ensure that ``:startservers`` (and it's value of ``30``) will be applied to any node for which the ``web.rb`` attribute structure should be applied.

This approach will allow a recipe like this:

.. code-block:: ruby

   include_recipe "apache2"
   Chef::Log.info(node['apache']['prefork'].to_hash)

and a ``run_list`` like this:

.. code-block:: ruby

   run_list/web.json
   {
     "run_list": [ "role[web]" ]
   }

to produce results like this:

.. code-block:: ruby

   [Tue, 16 Aug 2011 14:44:26 -0700] INFO: 
            {
              "startservers"=>30, 
              "minspareservers"=>20, 
              "maxspareservers"=>40, 
              "serverlimit"=>400,
              "maxclients"=>400, 
              "maxrequestsperchild"=>10000
            }

Even though the ``web.rb`` file does not contain attributes and values for ``minspareservers``, ``maxspareservers``, ``serverlimit``, ``maxclients``, and ``maxrequestsperchild``, the deep merge capabilities pulled them in.