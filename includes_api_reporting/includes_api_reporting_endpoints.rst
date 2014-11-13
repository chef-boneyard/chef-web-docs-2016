.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Each organization-specific authentication request must include ``/organizations/ORG_NAME`` as part of the name for the endpoint. For example, the full endpoint for getting the details for a specific reporting run identifier for a node:

.. code-block:: html

   GET /organizations/ORG_NAME/reports/nodes/NODE/runs/RUNID

where ``ORG_NAME`` is the name of the organization, ``NODE`` is the name of the node, and ``RUNID`` is the reporting run identifier.