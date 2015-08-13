.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |client rb| configuration file has the following settings related to |push jobs|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``whitelist``
     - A |ruby hash| that contains the whitelist used by |push jobs|. For example:

       .. code-block:: ruby

          whitelist {
            'job-name' => 'command',
            'job-name' => 'command',
            'chef-client' => 'chef-client'
          }

       A job entry may also be ``'job-name' => {:lock => true}``, which will check the ``lockfile`` setting in the |client rb| file before starting the job.

       .. warning:: The ``whitelist`` setting is available only when using |push jobs|, a tool that runs jobs against nodes in an organization.
