.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

If a lightweight resource is used in a recipe, and the provider attribute is omitted, |chef| will look for a lightweight provider of the same name as the resource in the same cookbook by default. For example, a lightweight resource that explicitly names the provider:

.. code-block:: ruby

   aws_elastic_ip :my_ip do
     ip 1.2.3.4
     provider :aws_elastic_ip # unnecessary, as this is the default
   end

versus a similar lightweight resource that does not list the lightweight provider:

.. code-block:: ruby

   aws_elastic_ip :my_ip do
     ip 1.2.3.4
   end

Both examples should provide the same results.