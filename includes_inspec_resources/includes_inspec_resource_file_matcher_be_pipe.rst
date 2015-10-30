.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_pipe`` matcher tests if the file exists as first-in, first-out special file (``.fifo``) that is typically used to define a named pipe, such as ``/var/log/nginx/access.log.fifo``:

.. code-block:: ruby

   it { should be_pipe }
