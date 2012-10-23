.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A deployment happens in four phases:

# Checkout. |chef| uses the |resource scm| resource to get the specified application revision, placing a clone or checkout in the sub-directory of the ``deploy`` directory named ``cached-copy``. A copy of the application is then placed in a sub-directory under ``releases``.
#. Migrate. If a migration is to be run, |chef| symlinks the database configuration file into the checkout (``config/database.yml`` by default) and runs the migration command. For a |ruby on rails| application, the ``migration_command`` is usually set to ``rake db:migrate``.
#. Symlink. Directories for shared and temporary files are removed from the checkout (``log``, ``tmp/pids``, and ``public/system`` by default). After this step, any needed directories (``tmp``, ``public``, and ``config`` by default) are created if they don't already exist. This step is completed by symlinking shared directories into the current ``release``, ``public/system``, ``tmp/pids``, and ``log`` directories, and then symlinking the ``release`` directory to ``current``.
#. Restart. The application is restarted according to the restart command set in the recipe.
