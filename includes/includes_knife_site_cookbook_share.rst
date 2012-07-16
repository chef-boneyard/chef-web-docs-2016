.. This is an included file that describes a sub-command or argument in Knife.


The ``share`` argument is used to add a cookbook to |url cookbook|. This action will require a user account and a certificate for |url community|. By default, |knife| will use the user name and API key that is identified in the configuration file used during the upload; otherwise these values must be specified on the command line or in an alternate configuration file. If a cookbook already exists on |url cookbook|, then only an owner or maintainer of that cookbook can make updates.

This argument has the following syntax::

   knife cookbook site share COOKBOOK_NAME CATEGORY (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``CATEGORY``
     - |CATEGORY|
   * - ``-o PATH:PATH``, ``--cookbook-path PATH:PATH``
     - |cookbook-path|

For example:

.. code-block:: bash

   $ knife cookbook site share "apache2" "Web Servers"
