.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_listening`` matcher can also test if the port is listening for traffic over a specific protocol or on local binding address. Use ``.with()`` to specify a protocol or local binding address. For example, a protocol:

.. code-block:: ruby

   it { should be_listening.with('tcp') }

A local binding address:

   it { should be_listening.with('127.0.0.1:631') }

A protocol and a local binding address:

   it { should be_listening.with('tcp', '127.0.0.1:631') }
