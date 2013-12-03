.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 


|vagrant| supports a number of virtualization and cloud back-ends. For our purposes |virtualbox| (https://www.virtualbox.org) is used.

Install |vagrant| 1.2.1 or later from packages. You may download it from https://downloads.vagrantup.com.

Our test configuration requires a number of |vagrant| plugins, install the following plugins in exactly this order:

.. code-block:: bash

   $ vagrant plugin install vagrant-omnibus
   $ vagrant plugin install vagrant-chef-zero
   $ vagrant plugin install vagrant-berkshelf
