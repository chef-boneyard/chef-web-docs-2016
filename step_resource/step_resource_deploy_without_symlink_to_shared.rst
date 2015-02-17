.. This is an included how-to. 

To deploy without creating symbolic links to a shared folder:

.. code-block:: ruby

   deploy '/my/apps/dir/deploy' do
     symlinks {}
   end

When deploying code that is not |ruby on rails| and symbolic links to a shared folder are not wanted, use parentheses ``()`` or ``Hash.new`` to avoid ambiguity. For example, using parentheses:

.. code-block:: ruby

   deploy '/my/apps/dir/deploy' do
     symlinks({})
   end

or using ``Hash.new``:

.. code-block:: ruby

   deploy '/my/apps/dir/deploy' do
     symlinks Hash.new
   end
