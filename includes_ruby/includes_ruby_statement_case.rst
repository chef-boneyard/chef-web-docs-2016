.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``case`` statement can be used to handle a situation where there are a lot of conditions. Use the ``when`` statement for each condition, as many as are required.

For example, using a ``case`` statement with the ``platform`` method:

.. code-block:: ruby

   case node["platform"]
   when "debian", "ubuntu"
     # do debian/ubuntu things
   when "redhat", "centos", "fedora"
     # do redhat/centos/fedora things
   end

For example, using a ``case`` statement with the ``platform_family`` method:

.. code-block:: ruby

   case node["platform_family"]
   when "debian"
     # do things on debian-ish platforms (debian, ubuntu, linuxmint)
   when "rhel"
     # do things on RHEL platforms (redhat, centos, scientific, etc)
   end

