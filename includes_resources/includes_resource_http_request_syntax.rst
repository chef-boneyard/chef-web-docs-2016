.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource http request| resource in a recipe is as follows:

.. code-block:: ruby

   http_request "name" do
     url "http://opscode.com/path"
     attribute "value" # see attributes section below
     ...
     action :action
   end

where 

* ``http_request`` tells |chef| to use the ``Chef::Provider::HttpRequest`` provider during the |chef| run
* ``"name"`` is the message that will be appended to the HTTP request
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``url`` is the URL that will precede ``?message=`` in the HTTP request
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run

The following is an example of how the |resource http request| resource can work when used in a recipe. In this example, the following example will send a DELETE request to "http://www.opscode.com/some_page?message=please_delete_me".

.. code-block:: ruby

   http_request "please_delete_me" do
     url "http://www.opscode.com/some_page"
     action :delete
   end
