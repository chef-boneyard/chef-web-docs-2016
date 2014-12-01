======================================================
Notes for |chef server oec| Upgrades 
======================================================

The following sections contain more information about the upgrade process from |chef server oec| to |chef server| version 12. Please consult with |company_name| support about any of these situations if needed.

|chef server rb|, Symlinks
=====================================================
The name of the configuration file used by the |chef server| has been changed to |chef server rb| from |private chef rb|. A symlink from |private chef rb| to |chef server rb| is created during upgrades from older versions of the |chef server|.

If the |resource template| resource is used to manage the |private chef rb| file that existed prior to the upgrade process, continuing to use this process will break the symlink that is created during the upgrade. If this situation applies to your organization, do the following:

#. If the |private chef rb| file is being managed as a template, remove that resource from recipe, remove the recipe from the run-list, or some other action that ensures this file isn't managed by |chef| until after the upgrade process is complete.
#. Upgrade to |chef server| 12.
#. Re-create the management process that was used prior to the upgrade, but make the necessary changes for the |chef server rb| file.
#. Verify that the file is being managed and that the symlink is not broken.
