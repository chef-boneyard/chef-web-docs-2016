.. This is an included how-to. 

Add the recipe ``ohai`` to a node or role run-list. Put it first to make sure that custom plugins are loaded and available to other recipes. When |chef| runs, during the compile phase the plugins will be copied into place and then loaded and merged with the node. This does cause |ohai| to be run twice which can add a few seconds to the total run time of |chef|.




