=====================================================
Upgrade to Enterprise Chef
=====================================================

.. this topic still needs a lot of work

To upgrade to |chef server oec|, do the following:

.. code-block:: bash

   /code private-chef-ctl stop on all machines
   dpkg -i or rpm -U <new package> on all machines
   private-chef-ctl upgrade on all machines (you need to do this in the right order, to follow)
   private-chef-ctl cleanup on all machines


