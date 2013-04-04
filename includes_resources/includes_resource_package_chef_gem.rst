.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|resource desc chef_gem| This resource is based on the :doc:`package resource </resource_package>`. 

The |resource chef_gem| resource works with all of the same attributes and options as the |resource package_gem| resource, but does not accept the ``gem_binary`` attribute because it always uses the ``CurrentGemEnvironment`` under which |chef| is running. In addition to performing actions similar to the |resource package_gem| resource, the |resource chef_gem| resource does the following:

* Runs its actions immediately, before convergence, allowing a |gem| to be used in a recipe immediately after it is installed
* Runs ``Gem.clear_paths`` after the action, ensuring that |gem| is aware of changes so that it can be required immediately after it is installed

.. note:: |note resource_based_on_package|