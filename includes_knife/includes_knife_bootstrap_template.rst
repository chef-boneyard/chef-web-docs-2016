.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``chef-full`` distribution uses the |omnibus installer|. For most bootstrap operations, regardless of the platform on which the target node is running, using the ``chef-full`` distribution is the best approach for installing the |chef client| on a target node. In some situations, using another supported distribution is necessary. And in some situations, a custom template may be required. For example, the default bootstrap operation relies on an Internet connection to get the distribution to the target node. If a target node cannot access the Internet, then a custom template can be used to define a specific location for the distribution so that the target node may access it during the bootstrap operation.

For example, a bootstrap template file named "british_sea_power.erb":

.. code-block:: bash

   $ knife bootstrap 123.456.7.8 -x username -P password --sudo --distro "british_sea_power.erb"

The following examples show how a bootstrap template file can be customized for various platforms.

