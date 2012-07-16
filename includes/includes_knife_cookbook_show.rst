.. This is an included file that describes a sub-command or argument in Knife.


The ``show`` argument is used to view information about a cookbook, parts of a cookbook (attributes, definitions, files, libraries, providers, recipes, resources, and templates), or a file that is associated with a cookbook. 

This argument has the following syntax::

   knife cookbook show COOKBOOK_NAME [COOKBOOK_VERSION] [PART...] [FILE_NAME] (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-f FQDN``, ``--fqdn FQDN``
     - |fqdn|
   * - ``FILE_NAME``
     - |FILE_NAME|
   * - ``-p PLATFORM``, ``--platform PLATFORM``
     - |platform|
   * - ``PART``
     - |PART|
   * - ``-V PLATFORM_VERSION``, ``--platform-version PLATFORM_VERSION``
     - |platform-version|
   * - ``COOKBOOK_VERSION``
     - |COOKBOOK_VERSION show|
   * - ``-w``, ``--with-uri``
     - |with-uri|
     
For example, to get the list of available versions of a cookbook named "getting-started", enter:

.. code-block:: bash

   $ knife cookbook show getting-started

to return something like:

.. code-block:: bash

   getting-started   0.3.0  0.2.0
   
To show a list of data about a cookbook using the name of the cookbook and the version, enter:

.. code-block:: bash

   $ knife cookbook show getting-started 0.3.0

to return something like:

.. code-block:: bash

   attributes:
     checksum:     fa0fc4abf3f6787aeb5c3c5c35de667c
     name:         default.rb
     path:         attributes/default.rb
     specificity:  default
     url:          https://somelongurlhere.com
   chef_type:      cookbook_version
   cookbook_name:  getting-started
   definitions:    []
   files:          []
   frozen?:        false
   json_class:     Chef::CookbookVersion
   libraries:      []

To only view data about "templates", enter:

.. code-block:: bash

   $ knife cookbook show getting-started 0.3.0 templates

to return something like:

.. code-block:: bash

   checksum:     a29d6f254577b830091f140c3a78b1fe
   name:         chef-getting-started.txt.erb
   path:         templates/default/chef-getting-started.txt.erb
   specificity:  default
   url:          https://someurlhere.com

