.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Each authentication request must include ``/organizations/organization_name`` as part of the name for the endpoint. For example, the full endpoint for getting a list of roles:

.. code-block:: html

   GET /organizations/organization_name/roles

and for the same request, but to the open source |chef server|:

.. code-block:: html

   GET /roles