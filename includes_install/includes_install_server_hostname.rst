.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

The hostname for the |chef server| must meet the following requirements:

#. The hostname must be a |fqdn|, including the domain suffix. For example, something like ``mychefserver.example.com`` (and not something like ``mychefserver``)
#. The hostname must be resolvable. In most cases, such as for a |chef server| that will run in a production environment, add the hostname for the |chef server| to the |dns| system. In some cases, such as when deploying |chef server| into a testing environment, just adding the hostname to the ``/etc/hosts`` file is enough to ensure that a hostname is resolvable
