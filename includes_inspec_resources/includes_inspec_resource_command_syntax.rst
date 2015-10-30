.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``command`` |inspec resource| block declares a command to be run, one (or more) expected outputs, and the location to which that output is sent:

.. code-block:: ruby

   describe command('command') do
     it { should exist }
     its('matcher') { should eq 'output' }
   end

or:

.. code-block:: ruby

   describe command('command').exist? do
     its('matcher') { should eq 'output' }
   end

where

* ``'command'`` must specify a command to be run
* ``.exist?`` is the ``exist`` matcher
* ``'matcher'`` is one of ``exit_status``, ``stderr``, or ``stdout``
* ``'output'`` tests the output of the command run on the system versus the output value stated in the test
