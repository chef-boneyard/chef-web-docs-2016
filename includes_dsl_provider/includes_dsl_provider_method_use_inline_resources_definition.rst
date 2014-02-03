.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``use_inline_resources`` method should be considered a default method for any provider that defines a custom resource. It's the correct behavior. And it will soon become the default behavior in a future version of the |chef client|. Once that happens, inline compile mode will be able to be turned off selectively, for specific resources, when required.

In the meantime, use a definition to work around situations that require working around inline compile mode. See `this example <http://docs.opscode.com/essentials_cookbook_definitions.html#many-recipes-one-definition>`_ for how to use a definition in this situation.


