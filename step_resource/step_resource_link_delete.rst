.. This is an included how-to. 

The following example will delete the ``/tmp/mylink`` symbolic link and uses the ``only_if`` guard to run the ``test -L`` command, which verifies that ``/tmp/mylink`` is a symbolic link, and then only deletes ``/tmp/mylink`` if the test passes:

.. code-block:: ruby

   link "/tmp/mylink" do
     action :delete
     only_if "test -L /tmp/mylink"
   end
