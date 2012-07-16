.. This is an included file. 

A |chef client| is a management workstation on which |chef| is installed and from which most of the actual work that is required in a |chef| environment is done. The |chef client| interacts with the |chef server| and |chef indexer|, which are services that exist to provide a |chef client| with important information. When a |chef client| is run, it is asked to perform all of the steps that are required to bring the system into the expected state. Each time a |chef client| runs, it:

* Builds, registers, and authenticates nodes
* Synchronizes cookbooks and transfers this information to the local file cache on the |chef client|
* Compiles the resource collection by loading libraries, providers, resources, attributes, definitions, and recipes
* Configures each node, takes any appropriate action, and then saves it
* Looks for exceptions and notifications, handling each as specified
