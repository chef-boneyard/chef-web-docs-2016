.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A lightweight provider can extend another provider class. This can be done as a ``mixin``, which is then placed in a library under the ``library/`` directory of any cookbook that will use the extended provider class. The lightweight provider is then written to include that library in its implementation so that it has access to the extended core resource.

**jamescott: THIS TOPIC NEEDS TO BE REMOVED FROM THE CHEF ESSENTIALS TOPICS. IT IS WAY TOO DETAILED FOR JUST A SHORT PARAGRAPH. IF WE WANT THIS IN THE DOCS, IT HAS TO BE AN ACTUAL SCENARIO THAT ACTUALLY SHOWS HOW THIS IS DONE. LEFT IN FOR POSTERITY FOR NOW, BUT THIS GETS REMOVED BEFORE THIS TOPIC SHIPS.**