.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_socket`` matcher tests if the file exists as socket (``.sock``), such as ``/var/run/php-fpm.sock``:

.. code-block:: ruby

   it { should be_socket }
