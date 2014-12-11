=====================================================
Install the |chef dk_title|, Windows
=====================================================

.. warning:: This topic is a work in progress, currently capturing issues known to Windows users of the chef-dk, which is also a work in progress. The issues are captured based on the assumption that the http://docs.chef.io/install_dk.html topic is accurate for Windows users, as a starting point for installing the chef-dk, but also with the following exceptions and caveats.

Spaces and Directories
=====================================================
Directories that are used by |chef| on the |windows| platform cannot have spaces. For example, ``/c/Users/Steven Danno`` will not work, but ``/c/Users/StevenDanno`` will.

A different issue exists with the |knife| command line tool that is also related to spaces and directories. The ``knife cookbook site install`` subcommand will fail when the Windows directory contains a space.

Set the System |ruby|
=====================================================
The http://docs.chef.io/install_dk.html#set-the-system-ruby topic is accurate, but requires the following manual edits to the ``chef shell-init bash`` output:

* Add quotes around the variable assignment strings
* Convert ``C:/`` to ``/c/``

Save those changes.


Top-level Directory Names
=====================================================
Paths can be longer in Unix and Linux environments than they can be in Windows. Windows will throw errors when path name lengths are too long. For this reason, it's often helpful to use a very short top-level directory in Windows, much like what is done in Unix and Linux. For example, |chef| uses ``/opt/`` to install the |chef dk| on Mac OS X. A similar approach can be done on Windows, by creating a top-level directory with a short name. For example: ``c:\chef``.


