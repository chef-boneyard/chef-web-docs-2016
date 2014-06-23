.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef| is a powerful automation platform that transforms complex infrastructure into code, bringing your servers and services to life. Whether you’re operating in the cloud, on-premises, or a hybrid, |chef| automates how applications are configured, deployed, and managed across your network, no matter its size.

|chef| is built around simple concepts: achieving desired state, centralized modeling of IT infrastructure, and resource primitives that serve as building blocks. These concepts enable you to quickly manage any infrastructure with |chef|. These very same concepts allow |chef| to handle the most difficult infrastructure challenges on the planet.

Anything that can run the |chef client| can be managed by |chef|. For instance, you can manage physical machines, virtual machines, containers, or cloud-based instances. The |chef client| is an agent that runs on a node and performs the actual tasks that configure it. The |chef server| is the central repository for all configuration data. The |chef client| and |chef server| communicate with each other. For secure communications, they use a combination of public and private keys that ensures the |chef server| responds only to requests made by the |chef client|.