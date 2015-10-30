.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``iptables`` |inspec resource| block declares tests for rules in IP tables:

.. code-block:: ruby

   describe iptables(rule:'name', table:'name', chain: 'name') do
     it { should have_rule('RULE') }
   end

where

* ``iptables()`` may specify any combination of ``rule``, ``table``, or ``chain``
* ``rule:'name'`` is the name of a rule that matches a set of packets
* ``table:'name'`` is the packet matching table against which the test is run
* ``chain: 'name'`` is the name of a user-defined chain or one of ``ACCEPT``, ``DROP``, ``QUEUE``, or ``RETURN``
* ``have_rule('RULE')`` tests that rule in the iptables file
