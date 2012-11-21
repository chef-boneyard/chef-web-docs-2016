.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A recipe can write events to a |chef| log file and can cause exceptions using ``Chef::Log``. The levels include ``debug``, ``info``, ``warn``, ``error``, and ``fatal``. For example, to just capture information:

.. code-block:: ruby

   Chef::Log.info('some useful information')

Or to trigger a fatal exception:

.. code-block:: ruby

   Chef::Log.fatal('something bad')

