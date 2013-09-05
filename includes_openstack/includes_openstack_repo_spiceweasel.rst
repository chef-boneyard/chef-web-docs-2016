.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|spiceweasel| is a command-line tool that can be used for batch loading a |chef| infrastructure using a syntax file is authored in |ruby|, |json|, or |yaml|. |chef openstack| includes an ``infrastructure.yml`` file that documents all of the environments, roles and data bags used by the |chef repo openstack|. For more information about |spiceweasel|, see https://github.com/mattray/spiceweasel.

To see the commands necessary to push all of the files in the |chef repo openstack| to the |chef server|, run the following command:

.. code-block:: bash

   $ spiceweasel infrastructure.yml

To deploy the |chef repo openstack| to the |chef server|, run the following command:

.. code-block:: bash

   $ spiceweasel -e infrastructure.yml
