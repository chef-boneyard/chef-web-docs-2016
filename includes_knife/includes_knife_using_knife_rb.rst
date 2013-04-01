.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In addition to the default settings in a |knife rb| file, there are other subcommand-specific settings that can be added. When a subcommand is run, |knife| will use:

#. A value passed via the command-line
#. A value contained in the |knife rb| file
#. The default value

A value passed via the command line will override a value in the |knife rb| file; a value in a |knife rb| file will override a default value. See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

