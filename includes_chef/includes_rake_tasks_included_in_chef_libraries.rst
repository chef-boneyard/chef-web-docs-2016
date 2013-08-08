.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|rake| includes tasks that are installed with the |chef client| libraries. To view the tasks that are available, run ``rake -T``. For more information about |rake|, see http://en.wikipedia.org/wiki/Rake_(software).

The following |rake| commands are not replaced by |knife| sub-commands:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Command
     - Description
   * - ``bundle_cookbook``
     - Creates cookbook |tar gz| files in the pkgs/ directory.
   * - ``install``
     - Calls the following |rake| commands: ``update``, ``roles``, and ``upload_cookbooks``.
   * - ``ssl_cert``
     - Creates self-signed |ssl| certificates in the ``certificates/`` directory.
   * - ``update``
     - Updates the repository from version control server; understands |git| and |svn|.

The following |rake| commands duplicate functionality, and may be removed from future library updates:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Command
     - Description
   * - ``metadata``
     - Replaced by: ``knife cookbook metadata -a``.
   * - ``new_cookbook``
     - Replaced by: ``knife cookbook create``.
   * - ``role``
     - Replaced by: ``knife role from file``.
   * - ``roles``
     - Replaced by: ``knife role from file``; iterates over roles and then uploads them.
   * - ``test_cookbooks``
     - Replaced by: ``knife cookbook test -a``.
   * - ``test_cookbook``
     - Replaced by: ``knife cookbook test COOKBOOK_NAME``.
   * - ``upload_cookbooks``
     - Replaced by: ``knife cookbook upload -a``.
   * - ``upload_cookbook``
     - Replaced by: ``knife cookbook upload COOKBOOK_NAME``.


