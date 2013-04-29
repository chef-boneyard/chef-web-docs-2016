.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

**My init script works fine when I'm logged in but not over ssh or when launched from chef-client running as daemon!**

Shells commonly alter their environment at startup by loading various initialization scripts. The files used for initialization vary based on whether the shell is started as an interactive or non-interactive shell and whether it is is started as a login or non-login shell. When you log in, you are likely starting an interactive, login shell. When you run a command via ssh, it is possible that you are starting a non-interactive shell. This can mean that the process in question is receiving different environments. Ensure that your service or process is being started in a way that ensures its environment has the necessary key-value pairs.

**I want to change the environment for every process!**

To change the environment for new processes, you will need to alter the initialization scripts for your system's shell. You can manage these scripts using a Chef template resource; however, there are a few caveats you should be aware of:

* The environments of existing processes will be unaffected.
* Shells look to different startup files when started with different options. See your shell's documentation for the definitive list of files that need to be altered and whether it is possible to alter the environment for every possible invocation of the shell.
* When you first change a shell's initialization file, it will have no affect on your current shell or process since its environment has already been initialized.
* From a shell, you can use the source command to reload the given initialization file; however, since child processes do not affect their parent's environment, using a script or execute resource to run source from inside a Chef recipe will have no effect on chef-client's environment.
