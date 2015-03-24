.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following ``knife bootstrap`` settings can be added to the |knife rb| file:

``knife[:bootstrap_curl_options]``
   Use to add the ``--bootstrap-curl-options`` option.

``knife[:bootstrap_install_command]``
   Use to add the ``--bootstrap-install-command`` option.

``knife[:bootstrap_no_proxy]``
   Use to add the ``--bootstrap-no-proxy`` option.

``knife[:bootstrap_proxy]``
   Use to add the ``--bootstrap-proxy`` option.

``knife[:bootstrap_template]``
   Use to add the ``--bootstrap-template`` option.

``knife[:bootstrap_url]``
   Use to add the ``--bootstrap-url`` option.

``knife[:bootstrap_vault_item]``
   Use to add the ``--bootstrap-vault-item`` option.

``knife[:bootstrap_version]``
   Use to add the ``--bootstrap-version`` option.

``knife[:bootstrap_wget_options]``
   Use to add the ``--bootstrap-wget-options`` option.

``knife[:run_list]``
   Use to add the ``--run-list`` option.

``knife[:template_file]``
   Use to add the ``--bootstrap-template`` option.

``knife[:use_sudo]``
   Use to add the ``--sudo`` option.

.. note:: The ``knife bootstrap`` subcommand relies on a number of |ssh|-related settings that are handled by the ``knife ssh`` subcommand.
