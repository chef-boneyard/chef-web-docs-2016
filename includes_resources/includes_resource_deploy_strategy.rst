.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In the ``deploy`` directory, a sub-directory named ``shared`` must be created. This sub-directory is where configuration and temporary files will be kept. A typical |ruby on rails| application will have ``config``, ``log``, ``pids``, and ``system`` directories within the ``shared`` directory to keep the files stored there independent of the code in the source repository. 

In addition to the ``shared`` sub-directory, the deploy process will create sub-directories named ``releases`` and ``current`` (also in the ``deploy`` directory). The ``release`` directory holds (up to) five most recently deployed versions of an application. The ``current`` directory holds the currently-released version.

For example::

   deploy_directory/
     current/
     releases/
     shared/
       config/
       log/
       pids/
       system/

