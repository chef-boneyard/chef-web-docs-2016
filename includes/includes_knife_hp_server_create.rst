.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server create`` argument is used to create a new |hp cloud| cloud instance. This will provision a new image in |hp cloud|, perform a |chef| bootstrap (using the |ssh| protocol), and then install |chef| on the target system so that it can be run as a |chef client| and communicate with a |chef server|.

This argument has the following syntax::

   knife hp server create (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-A ID``, ``--hp-account ID``
     - |hp-account|
   * - ``--bootstrap-proxy PROXY_URL``
     - |bootstrap-proxy|
   * - ``--bootstrap-version VERSION``
     - |bootstrap-version|
   * - ``-d DISTRO``, ``--distro DISTRO``
     - |distro|
   * - ``-f FLAVOR_ID``, ``--flavor FLAVOR_ID``
     - |flavor|
   * - ``-G X,Y,Z``, ``--groups X,Y,Z``
     - |groups|
   * - ``--hp-auth URI``
     - |hp-auth|
   * - ``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
     - |identity-file|
   * - ``-I IMAGE_ID``, ``--image IMAGE_ID``
     - |image|
   * - ``-K SECRET``, ``--hp-secret SECRET``
     - |hp-secret|
   * - ``-N NODE_NAME``, ``--node-name NODE_NAME``
     - |node-name|
   * - ``-P PASSWORD``, ``--ssh-password PASSWORD``
     - |ssh-password|
   * - ``--prerelease``
     - |prerelease|
   * - ``-r RUN_LIST``, ``--run-list RUN_LIST``
     - |run-list|
   * - ``-S KEY``, ``--ssh-key KEY``
     - |ssh-key hp|
   * - ``-T ID``, ``--hp-tenant ID``
     - |hp-tenant|
   * - ``--template-file TEMPLATE``
     - |template-file|
   * - ``-x USER_NAME``, ``--ssh-user USER_NAME``
     - |ssh-user|
   * - ``-Z ZONE``, ``--hp-zone ZONE``
     - |hp-zone|

For example, to provision a server and then perform a bootstrap operation (using |ssh|), enter:

.. code-block:: bash

   $ knife hp server create -f 101 -I 1236 -S hptesting -x ubuntu -i ~/.ssh/hptesting.pem -d omnibus -r 'role[base]' 2

to return something like:

.. code-block:: bash

   Instance ID: 65646
   Instance Name: hp15-185-114-127
   Flavor: 101
   Image: 1236
   SSH Key Pair: hptesting
   
   Waiting for server............................................
   Public IP Address: 15.185.114.127
   Private IP Address: 10.4.21.238
   
   Waiting for sshd..done
   Bootstrapping Chef on 15.185.114.127
   15.185.114.127 --2012-03-09 18:18:17--  http://opscode.com/chef/install.sh
   ............
   
   ............
   15.185.114.127 [Fri, 09 Mar 2012 18:19:20 +0000] INFO: Chef Run complete in 25.468149268 seconds
   15.185.114.127 [Fri, 09 Mar 2012 18:19:20 +0000] INFO: Running report handlers
   15.185.114.127 [Fri, 09 Mar 2012 18:19:20 +0000] INFO: Report handlers complete
   
   Instance ID: 65646
   Instance Name: hp15-185-114-127
   Flavor: 101
   Image: 1236
   SSH Key Pair: hptesting
   Public IP Address: 15.185.114.127
   Private IP Address: 10.4.21.238
   Environment: _default
   Run List: role[base]
   
