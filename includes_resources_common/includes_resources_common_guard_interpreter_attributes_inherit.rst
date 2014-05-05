.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


All non-default interpreters will **not** inherit arguments that are available to guard attributes unless the ``guard_interpreter`` attribute is specified. For example, the following resource block will not inherit the ``environment`` attribute (and requires that the environment variable be specified within the ``not_if`` guard in addition to the resource block itself):

.. code-block:: ruby

   bash "javatooling" do
     environment {"JAVA_HOME" => "/usr/lib/java/jdk1.7/home"}
     code "java-based-daemon-ctl.sh -start"
     not_if "java-based-daemon-ctl.sh -test-started, :environment {'JAVA_HOME' => '/usr/lib/java/jdk1.7/home'}"
   end
   
and the following resource block will inherit the ``environment`` attribute:
   
.. code-block:: ruby
   
   bash "javatooling" do
     guard_interpreter :bash
     environment {"JAVA_HOME" => "/usr/lib/java/jdk1.7/home"}
     code "java-based-daemon-ctl.sh -start"
     not_if "java-based-daemon-ctl.sh -test-started"
   end