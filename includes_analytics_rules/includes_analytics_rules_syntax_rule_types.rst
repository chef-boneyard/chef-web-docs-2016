.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Each individual ``rule`` must be associated with a specific audit message type. As a rule is triggered during the |chef client| run, a message is sent to the |chef analytics| server. A rule may be configured to send notifications about a message to recipients that are located outside of the |chef analytics| server.

The syntax for a ``rule`` is:

.. code-block:: java

   rule "name" on message_type
   when
     // comment
     function()
   then
     // comment
     function()
   otherwise
     // comment
     function()
   end
   
where:

* ``"name"`` is the (optional) name of the ``rule`` block
* ``message_type`` is one of the following audit message types:

  .. list-table::
     :widths: 60 420
     :header-rows: 1
  
     * - Message Type
       - Description
     * - ``action``
       - Use to build rules for messages about actions that occur on the |chef server|.
     * - ``run_control``
       - Use to build rules for a single audit to be evaluated.
     * - ``run_control_group``
       - Use to build rules for a group of audits to be evaluated.
     * - ``run_converge``
       - Use to build rules for messages that are sent at the end of a |chef client| run.
     * - ``run_resource``
       - Use to build rules for messages that are sent as each resource is converged during a |chef client| run.
     * - ``run_start``
       - Use to build rules for messages that are sent at the start of a |chef client| run.

For example, an unnamed rule:

.. code-block:: ruby

   rule on action when
     data.name="app1"
   then
     set(#foo, "100")  
   end

and a named rule:

.. code-block:: ruby

   rule "name" on action when
     organization_name = "ponyville"
   then
     set(#foo, "100")  
   end

A rule can be configured to always fire for a message type:

.. code-block:: ruby

   rule "test_rule" on action when
     true
   then
     notify("some_alias")
   end

in the previous example, every ``action`` will notify ``"some_alias"``.

For example:

.. code-block:: ruby

   rules 'pci check telnet port'
     rule on run_control
     when
       name = 'should be listening'
       resource_type = 'port'
       resource_name = '23'
       status != 'success'
     then
       alert:error("PCI 2.3 - Encrypt all non-console administrative access such as browser/Web-based management tools.")
       notify("security-team@financialcore.com", "A machine is listening for connections on port 23!")
     end
   end