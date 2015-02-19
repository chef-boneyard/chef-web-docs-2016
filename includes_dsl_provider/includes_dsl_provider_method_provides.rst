.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``provides`` method to map a custom provider to an existing provider by specifying the |chef client| resource and the platform to which the mapping applies. The syntax for the ``provides`` method is as follows:

.. code-block:: ruby

   provides :resource_name, os: [ "os", "os", ...], platform_family: "os"

where:

* ``:resource_name`` is the |chef client| resource: ``:cookbook_file``, ``:package``, ``:rpm_package``, and so on
* ``"os"`` is a platform: ``"windows"``, ``"solaris2"``, ``"linux"``, and so on
* ``platform_family`` is optional and may specify the same parameters as the ``platform_family?`` method in the |dsl recipe|

A separate ``provides`` statement is required for each mapped provider. For example, a single mapped provider:

.. code-block:: ruby

   provides :cookbook_file

and two mapped providers:

.. code-block:: ruby

   provides :cookbook_file
   provides :package, os: "windows"

Use multiple ``provides`` statements to define multiple conditions. Use an array to match any of the platforms within the array:

.. code-block:: ruyby

   provides :cookbook_file
   provides :package, os: "windows"
   provides :rpm_package, os: [ "linux", "aix" ]
   provides :package, os: "solaris2", platform_family: "smartos"
   provides :package, platform: "freebsd"
   provides :package, os: "linux", platform_family: [ "rhel", "fedora" ]
   provides :package, os: "solaris2", platform_family: "solaris2" do |node|
            node[:platform_version].to_f <= 5.10
