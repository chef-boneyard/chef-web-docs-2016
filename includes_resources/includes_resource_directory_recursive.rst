.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |resource directory| resource can be used to create directory structures, as long as each directory within that structure is created explicitly. This is because the ``recursive`` attribute only applies ``group``, ``mode``, and ``owner`` attribute values to the leaf directory. 

A directory structure::

  /foo
    /bar
      /baz

The following example shows a way create a file in the ``/baz`` directory:

.. code-block:: ruby

   directory "/foo/bar/baz/file.rb" do
     owner "root"
     group "root"
     mode 00755
     action :create
   end

But with this example, the ``group``, ``mode``, and ``owner`` attribute values will only be applied to ``/baz``. Which is fine, if that's what you want. But most of the time, when the entire ``/foo/bar/baz`` directory structure is not there, you must be explicit about each directory. For example:

.. code-block:: ruby

   %w[ /foo /foo/bar /foo/bar/baz ].each do |path|
     directory path do
       owner "root"
       group "root"
       mode 00755
     end
   end

This approach will create each directory (``/foo``, then ``bar``, and then ``/baz``), with the correct hierarchy, and with the correct attribute values for ``group``, ``mode``, and ``owner``.

A similar approach is required when changing the access permissions to directory objects, the owner of a file, or the group associated with a directory object. For example:

.. code-block:: ruby

   %w[ "/usr/local/**/*" ].each do |path|
     file path do
       owner "root"
       group "root"
     end if File.file?(path)
     directory path do
       owner "root"
       group "root"
     end if File.directory?(path)
   end

Though it should be noted that the previous example isn't a great approach when there are a large number of actions that will take place. Consider using the |resource execute| resource and/or a definition to handle use cases that need to support a large number of recursive actions.


