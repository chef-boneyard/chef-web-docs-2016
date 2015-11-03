.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings for bootstrap:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``bootstrap['enable']``
     - Indicates whether an attempt to bootstrap the |chef server oec| is made. Generally only enabled on systems that have bootstrap enabled via a ``server`` entry. Default value: ``true``.
   * - ``bootstrap['bootstrap_server']``
     - 