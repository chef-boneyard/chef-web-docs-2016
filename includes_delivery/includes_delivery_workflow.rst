.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef delivery| encapsulates the entire development process: 

* Make changes to cookbooks, review and approve them with your team
* Deliver that cookbook to source control, after which |chef delivery| will build it, and then test it
* Applications typically comprise many cookbooks. |chef delivery| uses a phase called "Union" to build all of those cookbooks together, and then test them together
* Preview those changes to make sure they are the changes you want
* Deliver those changes!
