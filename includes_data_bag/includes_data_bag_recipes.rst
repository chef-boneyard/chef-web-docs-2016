.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Data bags can be accessed by a recipe in the following ways:

* Loaded by name when using the recipe DSL. Use this approach when a only single, known data bag item is required.
* Accessed through the search indexes. Use this approach when more than one data bag item is required or when the contents of a data bag are looped through. The search indexes will bulk-load all of the data bag items, which will result in a lower overhead than if each data bag item were loaded by name.