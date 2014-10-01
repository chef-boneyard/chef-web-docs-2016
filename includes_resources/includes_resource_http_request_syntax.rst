.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource http_request| resource in a recipe is as follows:

.. code-block:: ruby

   http_request "name" do
     url "http://some.url"
     attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``http_request`` tells the |chef client| to use the ``Chef::Provider::HttpRequest`` provider during the |chef client| run
* ``name`` is the name of the resource block; when the ``message`` attribute is not specified as part of a recipe, ``name`` is also the message that is sent by the HTTP request
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``url`` is the URL that will precede ``?message=`` in the HTTP request
* ``:action`` identifies which steps the |chef client| will take to bring the node into the desired state

For example, send a ``DELETE`` request to "http://www.getchef.com/some_page?message=please_delete_me".

.. code-block:: ruby

   http_request "please_delete_me" do
     url "http://www.getchef.com/some_page"
     action :delete
   end
