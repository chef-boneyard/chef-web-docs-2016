=====================================================
Run Resources First
=====================================================

|chef| processes recipes in two phases:

#. First, each resource in the node object is identified and a resource collection is built. All recipes are loaded and the actions specified within them are identified.
#. The system is configured based on the resource collection. Each resource is mapped to a provider. The provider examines the node and then does the steps necessary to complete the action.

Sometimes, it may be necessary to ensure that a specific resource is run at a specific time. For example, a resource may need to run before all other resources to ensure that a package is downloaded and available to all other resources. 

.. VERIFY: http://wiki.opscode.com/display/chef/After+hooks. Is this a feature in Chef? If it is, then add " or Last" to the title and create two subsections.
