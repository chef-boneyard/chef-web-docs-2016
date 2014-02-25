.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |resource remote_directory| resource can be used to create directory structures on a target node based on a directory structure that is defined in a cookbook. When the required directory structure does not exist, the |resource remote_directory| resource will create that structure explicitly. 

A directory structure::

  /foo
    /bar
      /baz

The following example shows a way create a file in the ``/baz`` directory:

.. code-block:: ruby

   remote_directory "/foo/bar/baz" do
     owner "root"
     group "root"
     mode 00755
     action :create
   end

With this example, the ``group``, ``mode``, and ``owner`` attribute values will be applied to ``/baz``. If the directory structure were::

  /foo

the |resource remote_directory| resource would first create the required directory structure::

  /foo
    /bar
      /baz

and apply the ``group``, ``mode``, and ``owner`` attribute values to the entire directory structure.


