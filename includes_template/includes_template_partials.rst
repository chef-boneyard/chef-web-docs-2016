.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A template can be built in a way that allows it to contain references to one (or more) smaller template files. (These smaller template files are also referred to as partials.) A partial can be referenced from a template file in one of the following ways:

* By using the ``render`` method in the template file
* By using the |resource template| resource and the ``variables`` property.
