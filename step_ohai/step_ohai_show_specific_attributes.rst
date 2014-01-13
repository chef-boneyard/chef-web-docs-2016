.. This is an included how-to. 

The ``ohai`` recipe can be added to a run-list. First, ensure that any custom |ohai| plugins are loaded and available to recipes. When the |chef client| runs, the plugins will be copied into place and then loaded and merged with the node. This does cause |ohai| to be run twice, which can increase the total run time for the |chef client|.



