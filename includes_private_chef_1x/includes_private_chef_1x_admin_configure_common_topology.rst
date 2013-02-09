.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef private| configuration settings are determined by the topology:

* **Standalone (default):** All components of |chef private| run on a single server.
* **Tiered:** Many front-end servers; a single back-end server.
* **High Availability:** Many front-end servers; a back-end cluster.

For Standalone:

.. code-block:: ruby

   topology "standalone"

For Tiered:

.. code-block:: ruby

   topology "tier"

For High Availability:

.. code-block:: ruby

   topology "ha"