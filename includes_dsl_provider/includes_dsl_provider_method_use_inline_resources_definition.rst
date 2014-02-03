.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``use_inline_resources`` method should be considered a default method for any provider that defines a custom resource. It's the correct behavior. And it will soon become the default behavior in a future version of the |chef client|. 

Because inline compile mode makes it impossible for embedded resources to notify resources in the parent resource collection, inline compile mode may cause issues with some provider implementations. In these cases, use a definition to work around inline compile mode. See `this example <http://docs.opscode.com/essentials_cookbook_definitions.html#many-recipes-one-definition>`_ for how to use a definition in this situation.
