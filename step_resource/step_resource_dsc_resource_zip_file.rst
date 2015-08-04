.. This is an included how-to. 

.. To use a zip file:

.. code-block:: ruby

   dsc_resource 'example' do
      resource_name :archive
      property :ensure, 'Present'
      property :path, 'C:\Users\Public\Documents\example.zip'
      property :destination, 'C:\Users\Public\Documents\ExtractionPath'
    end
