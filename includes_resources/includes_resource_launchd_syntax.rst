.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource launchd| resource is used to to manage a launchd daemon/agent. For example, to create a launchdaemon to run chef-client every15 mins:

.. code-block:: ruby

   launchd 'com.chef.client.every15' do
     program '/opt/chef/bin/chef-client'
     start_interval 900
     run_at_load true
   end

The full syntax for all of the properties that are available to the |resource launchd| resource is:

.. code-block:: ruby

   launchd 'name' do
     group                      Integer, String
     label                      String # defaults to name
     mode                       Integer, String
     notifies                   # see description
     owner                      Integer, String
     path                       # set automatically
     subscribes                 # see description
     action                     Symbol # defaults to :create if not specified
   end

where

* ``launchd`` is the resource
* ``name`` is the name of the resource block
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``group``, ``mode``, and ``owner`` are properties of this resource, with the |ruby| type shown. |see attributes|
