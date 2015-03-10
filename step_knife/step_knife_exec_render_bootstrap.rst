.. This is an included how-to. 


To render a bootstrap template without performing a bootstrap operation, use a command similar to:

.. code-block:: bash

   $ knife exec -E 'a = Chef::Knife::Bootstrap.new;a.config[:distro] = "chef-full";puts a.render_template'
