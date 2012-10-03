.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |lwrp homebrew tap| is used to run |homebrew| as the default package provider on |mac os x|. This lightweight provider replaces |macports|.

|homebrew| requires the ``/usr/local`` directory; the user that will run the cookbook must be the owner of that directory. See the |homebrew| FAQ for more information: https://github.com/mxcl/homebrew/wiki/FAQ.

Be sure to add ``recipe[homebrew]`` to the run list for any node that be using |homebrew|. This will ensure that it is available to |chef| and that |homebrew| is installed when it is necessary.

If any nodes require |macports|, be careful about adding an explicit dependency for |homebrew| to metadata, as this will cause the ``homebrew`` cookbook to be downloaded, its library loaded, and the default package provider on the local system to be changed to |homebrew|.
