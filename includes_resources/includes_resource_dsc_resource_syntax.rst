.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource dsc_resource| resource in a recipe is as follows:

.. code-block:: ruby

   dsc_resource "name" do
     resource_name :dsc_resource_name
     property :dsc_resource_property, "value"
     property ...
     ...
   end

where 

* ``dsc_resource`` tells the |chef client| use a |windows powershell_dsc| resource
* ``:dsc_resource_name`` is the name of the |windows powershell_dsc| resource
* ``property`` is zero (or more) properties in the |windows powershell_dsc| resource, where each property is entered on a separate line, ``:dsc_resource_property`` is the case-insensitive name of that property, and ``"value"`` is the value to be applied by the |chef client|

The following shows a |windows powershell_dsc| ``Archive`` resource:

.. code-block:: powershell

   Archive ExampleArchive {
     Ensure = "Present"
     Path = "C:\Users\Public\Documents\example.zip"
     Destination = "C:\Users\Public\Documents\ExtractionPath"
   } 

and then using that same |resource dsc_resource| with |chef|:

.. code-block:: ruby

   dsc_resource 'example' do
      resource_name :archive
      property :ensure, 'Present'
      property :path, "C:\Users\Public\Documents\example.zip"
      property :destination, "C:\Users\Public\Documents\ExtractionPath"
    end