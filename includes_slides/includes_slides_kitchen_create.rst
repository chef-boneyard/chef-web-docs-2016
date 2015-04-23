.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


Run:

.. code-block:: bash

   $ kitchen create

Returns:

.. code-block:: bash

   -----> Starting Kitchen (v1.2.1)
   -----> Creating <default-centos-64>...
          Step 0 : FROM centos:centos6
           ---> 68eb857ffb51
          Step 1 : RUN yum clean all
           ---> Running in cdf3952a3f18
          Loaded plugins: fastestmirror
          Cleaning repos: base extras libselinux updates
          Cleaning up Everything
           ---> b1cccd25ce55
          Removing intermediate container cdf3952a3f18
          Step 2 : RUN
            yum install -y sudo openssh-server openssh-clients which curl
           ---> Running in 9db69ace459d
          Loaded plugins: fastestmirror
