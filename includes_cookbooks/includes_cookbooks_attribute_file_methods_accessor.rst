.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Attribute accessor methods are automatically created and the method invocation can be used interchangeably with the keys. For example:

.. code-block:: ruby

   default.apache.dir          = '/etc/apache2'
   default.apache.listen_ports = [ '80','443' ]

This is a matter of style and preference for how attributes are reloaded from recipes, and may be seen when retrieving the value of an attribute.
