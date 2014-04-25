.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Any resource that passes a string command may also specify the interpreter that will be used to evaluate that string command. This is done by using the ``guard_interpreter`` attribute to specify a |resource script|-based resource: |resource script_bash|, |resource script_csh|, |resource script_perl|, |resource powershell_script|, |resource script_python|, and |resource script_ruby|, plus the |resource batch| resource. For example, the following code block will ensure the command is evaluated using |bash| (and not any other interpreter):

.. code-block:: ruby

   bash 'backupsettings' do
     guard_interpreter :bash
     code 'cp ~/appsettings.json ~/backup/appsettings.json'
     not_if '[[ -e ./appsettings.json ]]', :cwd => '~/backup'
   end

The ``guard_interpreter`` attribute may be set to any of the following values:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Value
     - Description
   * - ``:bash``
     - Use to evaluate a string command using the |resource script_bash| resource.
   * - ``:batch``
     - Use to evaluate a string command using the |resource batch| resource.
   * - ``:csh``
     - Use to evaluate a string command using the |resource script_csh| resource.
   * - ``:default``
     - Default. Use to execute the default interpreter as identified by the |chef client|.
   * - ``:perl``
     - Use to evaluate a string command using the |resource script_perl| resource.
   * - ``:powershell_script``
     - Use to evaluate a string command using the |resource powershell_script| resource.
   * - ``:python``
     - Use to evaluate a string command using the |resource script_python| resource.
   * - ``:ruby``
     - Use to evaluate a string command using the |resource script_ruby| resource.

All non-default interpreters will also inherit the following attributes from the |resource script|-based resource specified by the ``guard_interpreter`` attribute:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``architecture``
     - |resource powershell_script| resource only. |architecture windows_process|
   * - ``cwd``
     - |cwd|
   * - ``environment``
     - |environment variables|
   * - ``group``
     - |group command|
   * - ``path``
     - |path resource execute| The default value uses the system path.
   * - ``user``
     - |user command|
   * - ``umask``
     - |umask|

For example, the ``:environment`` hash only needs to be set once since the |resource script_bash| resource that executes the ``guard_interpreter`` will inherit the same value:

.. code-block:: ruby

   script "javatooling" do
     environment {"JAVA_HOME" => '/usr/lib/java/jdk1.7/home'}
     code 'java-based-daemon-ctl.sh -start'
     not_if 'java-based-daemon-ctl.sh -test-started' # No need to specify environment again
   end
   
   bash 'backupsettings' do
     guard_interpreter :bash
     code 'cp ~/appsettings.json ~/backup/appsettings.json'
     not_if '[[ -e ./appsettings.json ]]', :cwd => '~/backup'
   end

