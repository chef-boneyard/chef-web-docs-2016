.. This is an included file that describes a sub-command or argument in Knife.


The ``windows`` sub-command is used to configure and interact with nodes that exist on server and/or desktop machines that are running |windows|. Nodes are configured using |windows remote management|, which allows native objects---batch scripts, |windows powershell| scripts, or scripting library variables---to be called by external applications.

This plugin is available on |github|: https://github.com/opscode/knife-windows.

This sub-command has the following syntax when connecting to one (or more) machines that run |windows|::

   knife winrm [ARGUMENT] (options)

And the following syntax when performing a bootstrap::

   knife bootstrap windows [ARGUMENT] (options)

