.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource osx_profile| resource block manages configuration profiles in a |osx| environment using the |profiles| utility:

.. code-block:: ruby

  osx_profile 'Install screensaver profile' do
    profile 'com.company.screensaver.mobileconfig'
  end

The full syntax for all of the properties that are available to the |resource osx_profile| resource is:

.. code-block:: ruby

   osx_profile 'name' do
     profile                    String, Hash
     identifier                 String
     action                     Symbol # defaults to :install if not specified
   end

where

* ``osx_profile`` is the resource
* ``name`` is the name of the resource block
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``profile`` and ``identifier`` are properties of this resource, with the |ruby| type shown. |see attributes|
