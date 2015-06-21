.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``aws_s3_bucket`` driver-specific resource is as follows:

.. code-block:: ruby

   aws_s3_bucket 'name' do
     enable_website_hosting true
     options({ :acl => 'private' })
     website_options :index_document => { :suffix => "index.html" },
                     :error_document => { :key => "not_found.html" }
   end

where 

* ``aws_s3_bucket`` is the resource
* ``name`` is the name of the resource block
* ``enable_website_hosting``, and ``options`` are attributes of this resource, with example values shown. |see attributes|
