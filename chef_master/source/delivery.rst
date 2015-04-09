=====================================================
About |chef delivery_title|
=====================================================

.. note:: |chef delivery| is currently an invitation-only application. For `more information about getting an invitation <https://www.chef.io/delivery/>`_ please request an invite!

Use |chef delivery| to continuously deliver applications and infrastructure safely at speed:

* A tested and proven workflow that is already in use by organizations that have successfully adopted devops practices
* A visualization of the flow of changes that move through the development pipeline; immediately see how an idea is formed, built, and put into production
* View dependencies among interdependent projects and services; automatically test those dependencies every time a change occurs
* An automated software delivery pipeine that is built using the same configuration management system you are already using: |chef|!

.. image:: ../../images/delivery.png

|chef delivery| encapsulates the entire development process: 

* Make changes to cookbooks, review and approve them with your team
* Deliver that cookbook to source control, after which |chef delivery| will build it, and then test it
* Applications typically comprise many cookbooks. |chef delivery| uses a phase called "Union" to build all of those cookbooks together, and then test them together
* Preview those changes to make sure they are the changes you want
* Deliver those changes!
