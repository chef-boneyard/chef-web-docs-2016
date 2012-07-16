.. This is an included file that describes a sub-command or argument in Knife.


The ``bootstrap windows ssh`` argument is used to bootstrap |chef| installations in a |windows| environment, using a command shell that is native to |windows|.

This argument has the following syntax::

   knife bootstrap windows ssh (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``--bootstrap-proxy PROXY_URL``
     - |bootstrap-proxy|
   * - ``--bootstrap-version VERSION``
     - |bootstrap-version|
   * - ``-d DISTRO``, ``--distro DISTRO``
     - |distro|
   * - ``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
     - |identity-file|
   * - ``--N NAME``, ``--node-name NAME``
     - |node-name|
   * - ``-p PORT``, ``--ssh-port PORT``
     - |ssh-port|
   * - ``--[no-]host-key-verify``
     - |[no-]host-key-verify|
   * - ``-P PASSWORD``, ``--ssh-password PASSWORD``
     - |ssh-password|
   * - ``--prerelease``
     - |prerelease|
   * - ``-r RUN_LIST``, ``--run-list RUN_LIST``
     - |run-list|
   * - ``-s SECRET``, ``--secret SECRET``
     - |secret|
   * - ``--secret-file FILE``
     - |secret-file|
   * - ``--template-file TEMPLATE``
     - |template-file|
   * - ``-x USER_NAME``, ``--ssh-user USER_NAME``
     - |ssh-user|

For example:

.. code-block:: bash

   $ knife bootstrap windows ssh ec2-50-xx-xx-124.compute-1.amazonaws.com -r 'role[webserver],role[production]' -x Administrator -i ~/.ssh/id_rsa

