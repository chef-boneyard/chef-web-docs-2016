.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |resource deploy| resource is based on |capistrano|, a utility and framework for executing commands in parallel on multiple remote machines via |ssh|. The |resource deploy| resource in |chef| is designed to perform a similar functionality and results as the ``deploy`` and ``deploy:migration`` tasks do for |capistrano|.

.. Kept, but commented out.
.. .. list-table::
..    :widths: 200 300
..    :header-rows: 1
.. 
..    * - Task
..      - Description
..    * - ``deploy``
..      - The ``deploy`` task is used to deploy a project. This task first calls ``update``, which calls ``update_code`` to copy the project to its deployed location, which calls ``finalize_update`` to touch up the released code. After ``update`` is finished, ``create_symlink`` is called to update symlinks. And then ``restart`` is called to restart the application. 
..    * - ``deploy:migrations``
..      - The ``deploy:migrations`` task is used to deploy and run migrations. This task is similar to the ``deploy`` task, but with the ``migrate`` task running between ``update_code`` and ``create_symlink``.
..  
.. .. note:: In |capistrano|, the ``deploy:cleanup`` task is used to define the cleanup steps; in |chef|, cleanup is handled automatically.


