.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |resource remote_directory| resource can be used to create directory structures, as long as each directory within that structure is created explicitly. This is because the ``recursive`` attribute only applies ``group``, ``mode``, and ``owner`` attribute values to the leaf directory. 

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

But with this example, the ``group``, ``mode``, and ``owner`` attribute values will only be applied to ``/baz``. Which is fine, if that's what you want. But most of the time, when the entire ``/foo/bar/baz`` directory structure is not there, you must be explicit about each directory. For example:

.. code-block:: ruby

   %w[ /foo /foo/bar /foo/bar/baz ].each do |path|
     remote_directory path do
       owner "root"
       group "root"
       mode 00755
     end
   end

This approach will create the correct hierarchy---``/foo``, then ``/bar`` in ``/foo``, and then ``/baz`` in ``/bar``---and also with the correct attribute values for ``group``, ``mode``, and ``owner``.



