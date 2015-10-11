.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef (the executable).
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``chef gem`` subcommand is a wrapper around the ``gem`` command in |rubygems| and is used by |chef| to install |rubygems| into the |chef dk| development environment. All |knife| plugins, drivers for |kitchen|, and other |ruby| applications that are not packaged within the |chef dk| will be installed to the ``.chefdk`` path in the home directory: ``~/.chefdk/gem/ruby/ver.si.on/bin`` (where ``ver.si.on`` is the version of |ruby| that is packaged within the |chef dk|).
