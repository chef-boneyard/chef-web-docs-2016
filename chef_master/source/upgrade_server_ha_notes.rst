======================================================
Notes for High Availability |chef server| Upgrades 
======================================================

.. warning:: This topic is about upgrades to |chef server| 12. For notes about upgrading |chef server oec| in a high availablity configuration, see the following link:

   * `Enterprise Chef Server <http://docs.getchef.com/enterprise/upgrade_server_ha_notes.html>`_

.. 
.. The following sections contain more information about the upgrade process from |chef server oec| to |chef server| version 12. Please consult with |company_name| support about any of these situations if needed.
.. 
.. |chef server rb|, Symlinks
.. =====================================================
.. The name of the configuration file used by the |chef server| has been changed. A symlink from |private chef rb| to |chef server rb| is created during upgrades from older versions of the |chef server|.
.. 
.. If the |resource template| resource is used to manage the |private chef rb| file that existed prior to the upgrade process, continuing to use this process will break the symlink that is created during the upgrade. If this situation applies to your organization, do the following:
.. 
.. #. If the |private chef rb| file is being managed as a template, remove that resource from recipe, remove the recipe from the run-list, or some other action that ensures this file isn't managed by |chef| until after the upgrade process is complete.
.. #. Upgrade to |chef server| 12.
.. #. Re-create the manage process that was used prior to the upgrade, but configure it to manage the |chef server rb| file.
.. #. Verify that the file is being managed and that the symlink is not broken.
.. 