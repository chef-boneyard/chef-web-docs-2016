=====================================================
Install the |chef dk|
=====================================================

.. include:: ../../includes_install/includes_install_chef_dk.rst

Set the System |ruby|
=====================================================
.. include:: ../../step_ruby/step_ruby_set_system_ruby_as_chefdk_ruby.rst

Uninstall the |chef dk|
=====================================================
The |chef dk| can be uninstalled using the following steps.

|mac os x|
-----------------------------------------------------
For |mac os x|, use one of the following commands to remove the |chef dk|.

To remove installed files:

.. code-block:: bash

   $ sudo rm -rf /opt/chefdk

To remove the system installation entry:

.. code-block:: bash

   $ sudo pkgutil --forget com.getchef.pkg.chefdk

To remove the symlinks under ``/usr/bin``:

.. code-block:: bash

   $ ls -la /usr/bin | egrep '/opt/chefdk' | awk '{ print $9 }' | sudo xargs -I % rm -f /usr/bin/%

|windows|
-----------------------------------------------------
Use **Add / Remove Programs** to remove the |chef dk|.

|redhat enterprise linux|
-----------------------------------------------------
For |redhat enterprise linux|-based platforms, remove the |chef dk| using the package installer that is appropriate for that platform. For example:

.. code-block:: bash

   $ rpm -qa *chefdk*

or:

.. code-block:: bash

   $ yum remove <package>

|ubuntu|
-----------------------------------------------------
For |debian|-based platforms, such as |ubuntu|, remove the |chef dk| using the package installer that is appropriate for that platform. For example:

.. code-block:: bash

   $ dpkg -P chefdk
