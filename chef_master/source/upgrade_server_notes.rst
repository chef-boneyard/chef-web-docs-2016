======================================================
Notes for |chef server oec| Upgrades
======================================================

The following sections contain more information about the upgrade process from |chef server oec| to |chef server| version 12. Please consult with |company_name| support about any of these situations if needed.

|chef server rb|, Symlinks
=====================================================
The name of the configuration file used by the |chef server| has been changed to |chef server rb| from |private chef rb|. A symlink from |private chef rb| to |chef server rb| is created during upgrades from older versions of the |chef server|.

If the |resource template| resource is managing the |private chef rb| file in |chef server oec|, continuing to use this process will break the symlink that is created during the upgrade. If your organization is managing the |private chef rb| file with the |resource template| resource, do the following:

#. Remove or disable the management of the |private chef rb| file. For example, by removing that specific resource from a recipe, by removing the recipe it is associated with from the run-list, or by doing some other action that ensures this file isn't managed by |chef| until after the upgrade process is complete.
#. Upgrade to |chef server| 12.
#. Re-create the management process that was used prior to the upgrade, but make the necessary changes so that |chef| is managing the |chef server rb| file.
#. Verify that the |chef server rb| file is being managed and that the symlink from |private chef rb| to |chef server rb| is not broken.

Deprecated Solr Configuration Options
=====================================================
You may have tuned your Solr options while running your |chef server|, and placed customized options in your |private chef rb| using the opscode_solr options. With Chef 12 we've upgraded to Solr 4, and the configuration settings are now stored in |chef server rb| under opscode_solr4.

We've introduced automatic importing of some opscode_solr settings (heap, new size, and java options), but a vast majority are ignored. If you have a highly tuned Solr setup on your Chef server you should ensure you're porting your opscode_solr settings to opscode_solr4.
