.. This is an included file that describes a sub-command or argument in Knife.


The ``bootstrap windows winrm`` argument is used to bootstrap |chef| installations in a |windows| environment, using |windows remote management| and the |ws management| protocol for communication. This argument requires the fully-qualified domain name of the host machine be specified.

This argument has the following syntax::

   knife bootstrap windows winrm FQDN

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
   * - ``--N NAME``, ``--node-name NAME``
     - |node-name|
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

For example:

.. code-block:: bash

   $ knife bootstrap windows winrm ec2-50-xx-xx-124.compute-1.amazonaws.com -r 'role[webserver],role[production]' -x Administrator -P 'super_secret_password'

