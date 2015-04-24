.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``architecture``
     - |architecture windows_process| |architecture windows_process_i386| Possible values: ``:i386`` (for 32-bit processes) and ``:x86_64`` (for 64-bit processes).
   * - ``code``
     - |code quoted_string|
   * - ``command``
     - |name command| Default value: the ``name`` of the resource block. |see syntax|
   * - ``convert_boolean_return``
     - |convert_boolean_return| Default value: ``false``.
       
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

   * - ``creates``
     - Inherited from |resource execute| resource. |creates file_exists|
   * - ``cwd``
     - Inherited from |resource execute| resource. |cwd run_command|
   * - ``environment``
     - Inherited from |resource execute| resource. |environment variables|
   * - ``flags``
     - |flags powershell_script| Default value: ``-NoLogo, -NonInteractive, -NoProfile, -ExecutionPolicy RemoteSigned, -InputFormat None, -File``.
   * - ``group``
     - Inherited from |resource execute| resource. |group command|
   * - ``guard_interpreter``
     - Default value: ``:powershell_script``. When this attribute is set to ``:powershell_script``, the 64-bit version of the |windows powershell| shell will be used to evaluate strings values for the ``not_if`` and ``only_if`` attributes. Set this value to ``:default`` to use the 32-bit version of the |windows cmd exe| shell.
   * - ``interpreter``
     - |interpreter|
   * - ``provider``
     - Optional. |provider resource_parameter| |see providers|
   * - ``returns``
     - Inherited from |resource execute| resource. |return_value cmd| Default value: ``0``.
   * - ``timeout``
     - Inherited from |resource execute| resource. |timeout command| Default value: ``3600``.
   * - ``user``
     - Inherited from |resource execute| resource. |user command|