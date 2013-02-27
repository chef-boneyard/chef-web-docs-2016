.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following examples are listed in the same order of attribute precedence (low precedence to high).

**Default attribute in /attributes/default.rb**

.. code-block:: ruby

   default["apache"]["dir"] = "/etc/apache2"

**Default attribute in /environments/environment_name.rb**

.. code-block:: ruby

   default_attributes({ "apache" => {"dir" => "/etc/apache2"}})

**Default attribute in /roles/role_name.rb**

.. code-block:: ruby

   default_attributes({ "apache" => {"dir" => "/etc/apache2"}})

**Default attribute in node object in recipe**

.. code-block:: ruby

   node.default["apache"]["dir"] = "/etc/apache2"

**Normal attribute set as a cookbook attribute**

.. code-block:: ruby

   set["apache"]["dir"] = "/etc/apache2"
   normal["apache"]["dir"] = "/etc/apache2"  #set is an alias of normal.

**Normal attribute set in a recipe**

.. code-block:: ruby

   node.set["apache"]["dir"] = "/etc/apache2"
    
   node.normal["apache]["dir"] = "/etc/apache2" # Same as above
   node["apache"]["dir"] = "/etc/apache2"       # Same as above

**Override attribute in /attributes/default.rb**

.. code-block:: ruby

   override["apache"]["dir"] = "/etc/apache2"

**Override attribute in /roles/role_name.rb**

.. code-block:: ruby

   override_attributes({ "apache" => {"dir" => "/etc/apache2"}})

**Override attribute in /environments/environment_name.rb**

.. code-block:: ruby

   override_attributes({ "apache" => {"dir" => "/etc/apache2"}})

**Override attribute in a node object (from a recipe)**

.. code-block:: ruby

   node.override["apache"]["dir"] = "/etc/apache2"




