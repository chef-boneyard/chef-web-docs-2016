.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

The |omnibus installer| is used to set up a workstation. The |omnibus installer| uses a single command to install the |chef client| and all of its dependencies, including an embedded version of |ruby|, |rubygems|, |open ssl|, key-value stores, parsers, libraries, and command line utilities. The |omnibus installer| puts everything into a unique directory (``opt/opscode/``) so that the |chef client| will not interfere with other applications that may be running on the target machine. Once installed, the |chef client| requires a few more configuration steps before it can be run as a workstation.

.. note:: The |omnibus installer| requires that an installation be done as a root user.