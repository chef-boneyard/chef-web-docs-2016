.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

#. Run ``knife ssl fetch`` to add |chef server| SSL certificates to the your SSL trusted certificates.
#. Run ``knife client list`` to test the connection to the |chef server|. The command should return ``<orgname>-validator``, where ``<orgname>`` is the name of the organization that was created previousl
