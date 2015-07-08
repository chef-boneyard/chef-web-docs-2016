.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For a |chef server| configuration that is launched from the |amazon aws marketplace|, the following ports are configured automatically using the one-click installation:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Port
     - Description
   * - 443
     - HTTPS
   * - 22
     - SSH
   * - 5672
     - RabbitMQ. Must be open and available to use |chef analytics|.

If the |chef server| is launched in a way that does not use the one-click installation, these ports may need to be configured manually.
