.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A standalone deployment is a great way to test out |chef server oec|. All of the components and services are deployed on a single piece of hardware, so the installation is relatively straightforward. For a simple test deployment, use any machine--including a virtual machine--that meets the minimum system requirements.

A standalone deployment can also be more than just a testing deployment. Many organizations use the standalone configuration in production environments. If your organization expects to have only a few hundred nodes and doesn't anticipate the need to scale horizontally or vertically, then this configuration may be the best option. Depending on the hardware on which |chef server oec| is installed, a standalone deployment can easily handle organization sizes well beyond several thousand nodes, so there is room for growth as long as the hardware on which the server is installed can support that growth.

A hosted |chef server oec| configuration is perfectly viable alternative to a standalone deployment.

.. image:: ../../images/oec_server_deploy_standalone.png