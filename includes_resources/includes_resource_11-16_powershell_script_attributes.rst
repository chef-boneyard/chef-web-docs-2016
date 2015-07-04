.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``architecture``
     - **Ruby Type:** Symbol

       |architecture windows_process| |architecture windows_process_i386| Possible values: ``:i386`` (for 32-bit processes) and ``:x86_64`` (for 64-bit processes).
   * - ``code``
     - **Ruby Type:** String

       |code quoted_string|
   * - ``command``
     - **Ruby Types:** String, Array

       |name command| Default value: the ``name`` of the resource block. |see syntax|
   * - ``convert_boolean_return``
     - **Ruby Types:** TrueClass, FalseClass

       |convert_boolean_return| Default value: ``false``.
       
       When the ``guard_intrepreter`` common attribute is set to ``:powershell_script``, a string command will be evaluated as if this value were set to ``true``. This is because the behavior of this attribute is similar to the value of the ``"$?"`` expression common in |unix| interpreters. For example, this:
       
       .. code-block:: ruby
       
          powershell_script 'make_safe_backup' do
            guard_interpreter :powershell_script
            code 'cp ~/data/nodes.json ~/data/nodes.bak'
            not_if 'test-path ~/data/nodes.bak'
          end

       is similar to:

       .. code-block:: ruby
       
          bash 'make_safe_backup' do
            code 'cp ~/data/nodes.json ~/data/nodes.bak'
            not_if 'test -e ~/data/nodes.bak'
          end

   * - ``flags``
     - **Ruby Type:** String

       |flags powershell_script| Default value: ``-NoLogo, -NonInteractive, -NoProfile, -ExecutionPolicy RemoteSigned, -InputFormat None, -File``.
   * - ``interpreter``
     - **Ruby Type:** String

       |interpreter|
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
