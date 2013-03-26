=====================================================
Unix Environment Variables
=====================================================

In Unix, a process' environment is a set of key-value pairs made available to the process. Often, programs expect their environment to contain information required for the program to run. The details of how these key-value pairs are accessed depends on the API of the language being used. This article explains how environments of child processes interact with their parent process and how you can use Chef to ensure that services and applications are started with the proper environment.

Child Processes and Inheritance
=====================================================
Child processes inherit a copy of their parent's environment. In Bash (and other shells) the environment is accessible via shell variables. Shell variables can be added to the environment that is inherited by children processes using the export keyword.

Consider the following example:

.. code-block:: bash

   % WOO="woo" #Set a shell variable
   % echo $WOO
   woo
   % bash #Start a new process, a child of our first shell
   % echo $WOO # Shell variable is empty because we didn't export it
   
   % exit # Return to original shell
   exit
   % export WOO # Export variable 
   % bash
   % echo $WOO #Shell variable now available in children.
   woo
   % exit

As mentioned, the child process gets a copy of its parent's environment. This means that any changes made to that environment do not affect the parent process. For example:

.. code-block:: bash

   % WOO="woo" #Set a shell variable
   % echo $WOO
   woo
   % bash #Start a new process, a child of our first shell
   % export WOO="hello" # Change and export the shell variable
   % exit # Return to original shell
   exit
   % echo $WOO #The parent's value remains unchanged.
   woo
   % exit

The principles mentioned above (a child process receives a copy of its parent's environment and cannot affect their parent's environment) apply in Ruby and Chef just as they do in Bash.

In Ruby (and thus Chef), the current environment can be altered via the ENV variable. Any changes made to the environment will also be available to child process started by Chef. For example, consider the following recipe:

.. code-block:: bash

   ENV['FOO'] = "bar"
   bash "env_test0" do
     code<<-EOF
     echo $FOO
   EOF
   end

When run, the bash resource will correctly echo "bar" to its standard output.

However, just as in Bash, changes made in child processes have no affect on the parent, and thus no affect on subsequent child processes:

.. code-block:: bash

   bash "env_test1" do
     code<<-EOF
     export BAZ="bar"
   EOF
   end
   
   bash "env_test2" do
     code<<-EOF
     echo $BAZ
   EOF
   end

When run, the second bash resource will not cause anything to be echoed to standard out as BAZ is not part of its environment.

Managing Environments when Using Chef
=====================================================
Services and other processes often look to environment variables for important information needed at run time. There are a number of ways to ensure that processes have access to the environment variables they need to run properly.

Using the Service's Init Script
-----------------------------------------------------
Ideally, a service's init script would contain everything needed to properly start that service, including the necessary environment. Ensuring that the init script itself contains the necessary environment changes ensures that the service will start properly whenever it is being started using its init script, whether that be from Chef's service resource or directly from the shell. In classic System V init scripts, the environment can be altered just as it can be altered in any other shell script, by using a shell variable marked with the export keyword:

.. code-block:: ruby

   export IMPORTANT_VAR="value"

Upstart Services
+++++++++++++++++++++++++++++++++++++++++++++++++++++
For services started using Upstart (the System V-compatible init system used by recent versions of Ubuntu and other distributions), their environment can be altered using env:

.. code-block:: ruby

   env IMPORTANT_VAR="value"


Systemd Services
+++++++++++++++++++++++++++++++++++++++++++++++++++++
For services started using systemd (the System V-compatible init system by the recent versions of Fedora and other distributions), their environment can be altered using the ``Environment`` or ``EnvironmentFile`` options:

.. code-block:: ruby

   Environment="IMPORTANT_VAR='value'"

If the init script provided by the package does not include the necessary environment variables, you can manage your altered init script using the |chef| |resource template| resource.

Using ENV
-----------------------------------------------------
Another method is to use Ruby's predefined ENV variable to set the environment variable. This ensures that any child processes (including the service that a resource may be starting) have this value in their environment. While not technically a Hash, ENV can be manipulated as if it were a Hash. For example:

.. code-block:: ruby

   ENV['IMPORTANT_VAR'] = "value"
   
   # Some service that requires IMPORTANT VAR
   service "example_service" do
     action :start
   end

Note, however, that changes made to ENV only effect the environment of the chef-client process and its children processes. Altering the environment in this way will often ensure that Chef can start the service properly, but will not ensure that the service will start properly when started using other methods.

Using Resource Attributes
-----------------------------------------------------
If you are starting a processes by using an execute or script resource, you can use the environment attribute to alter the environment that will be passed to the process.

.. code-block:: bash

   bash "env_test" do
     code<<-EOF
     echo $FOO
   EOF
     environment { 'FOO' => "bar" }
   end

Note that the only environment being altered is the environment being passed to the child process being started by the bash resource. This will not affect the environment of chef-client or subsequently started child processes.

Other Issues
=====================================================
**My init script works fine when I'm logged in but not over ssh or when launched from chef-client running as daemon!**

Shells commonly alter their environment at startup by loading various initialization scripts. The files used for initialization vary based on whether the shell is started as an interactive or non-interactive shell and whether it is is started as a login or non-login shell. When you log in, you are likely starting an interactive, login shell. When you run a command via ssh, it is possible that you are starting a non-interactive shell. This can mean that the process in question is receiving different environments. Ensure that your service or process is being started in a way that ensures its environment has the necessary key-value pairs.

**I want to change the environment for every process!**

To change the environment for new processes, you will need to alter the initialization scripts for your system's shell. You can manage these scripts using a Chef template resource; however, there are a few caveats you should be aware of:

* The environments of existing processes will be unaffected.
* Shells look to different startup files when started with different options. See your shell's documentation for the definitive list of files that need to be altered and whether it is possible to alter the environment for every possible invocation of the shell.
* When you first change a shell's initialization file, it will have no affect on your current shell or process since its environment has already been initialized.
* From a shell, you can use the source command to reload the given initialization file; however, since child processes do not affect their parent's environment, using a script or execute resource to run source from inside a Chef recipe will have no effect on chef-client's environment.
