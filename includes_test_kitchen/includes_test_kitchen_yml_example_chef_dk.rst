.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following example shows the provisioner settings needed to install the |chef dk|, and then use the version of |chef| that is embedded in the |chef dk| to converge the node.

.. code-block:: yaml
   
   provisioner:
     ...
     chef_omnibus_install_options: -P chefdk
     chef_omnibus_root: /opt/chefdk
