.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef private| configurations are governed by a topology, which describes which of our recommended architectures you plan to install. Your choices are:

.. code-block:: ruby

   topology "standalone"

Options:

* standalone (default): All of |chef private| running on a single server.
* manual: Identical to standalone.
* tier: Many front-end servers to a single, non-high-availability back-end server.
* ha: Many front-end servers to a high-availability back-end cluster.

For example:

.. code-block:: ruby

   topology "standalone"

or:

.. code-block:: ruby

   topology "manual"

or:

.. code-block:: ruby

   topology "tier"

or:

.. code-block:: ruby

   topology "ha"