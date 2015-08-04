.. This is an included how-to. 


The |resource execute| resource cannot be used to source a file (e.g. ``command 'source filename'``). The following example will fail because ``source`` is not an executable:

.. code-block:: ruby

   execute 'foo' do
     command 'source /tmp/foo.sh'
   end

Instead, use the |resource script| resource or one of the |resource script|-based resources (|resource script_bash|, |resource script_csh|, |resource script_perl|, |resource script_python|, or |resource script_ruby|). For example:

.. code-block:: ruby

   bash 'foo' do
     code 'source /tmp/foo.sh'
   end
