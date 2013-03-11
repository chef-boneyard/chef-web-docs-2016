.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Resources are created by the ``action`` block of a lightweight provider, they are inserted into the top-level resource collection after the lightweight resource to which the lightweight provider is associated. For example, if a resource collection looks like::

   top_level_resource_one
     lwrp_resource
   top_level_resource_two

then when ``lwrp_resource`` is executed, the resource collection will be modified as follows::

   top_level_resource_one              # already processed
     lwrp_resource                     # already processed
       embedded_resource_one           # created by the lightweight provider
       embedded_resource_two           # created by the lightweight provider
   top_level_resource_two

In this situation, embedded lightweight resources cannot notify the top-level resource because the top-level resource has finished processing. This has the same effect as if the top-level resource collection were invisible to the embedded lightweight resources.

To ensure that an embedded lightweight resource can notify the top-level resource add ``use_inline_resources`` to the top of the file that defines the lightweight provider that is associated with that lightweight resource. When ``use_inline_resources`` is added to the file, the code in the lightweight provider's ``action`` block will execute as part of a self-contained |chef| run. If any embedded lightweight resources are updated, the top-level lightweight resource is marked as updated and notifications set for the top-level resource will be triggered normally.
