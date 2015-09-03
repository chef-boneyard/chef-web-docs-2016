.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. This file is hooked into a slide deck


Create a resource that configures |apache| |httpd| for |redhat enterprise linux| 7 and |centos| 7.

This scenario covers the following:

#. Defining a cookbook named ``website``
#. Defining two properties
#. Defining an action
#. For the action, defining the steps to configure the system using resources that are built into |chef|
#. Creating two templates that support the custom resource
#. Adding the resource to a recipe
#. Testing the resource using |kitchen|
