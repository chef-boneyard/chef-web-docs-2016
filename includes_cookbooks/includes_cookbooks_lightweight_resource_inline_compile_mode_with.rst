.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


To ensure that an embedded lightweight resource can notify the top-level resource add ``use_inline_resources`` to the top of the file that defines the lightweight provider that is associated with that lightweight resource. When ``use_inline_resources`` is added to the file, the code in the lightweight provider's ``action`` block will execute as part of a self-contained |chef client| run. If any embedded lightweight resources are updated, the top-level lightweight resource is marked as updated and notifications set for the top-level resource will be triggered normally.
