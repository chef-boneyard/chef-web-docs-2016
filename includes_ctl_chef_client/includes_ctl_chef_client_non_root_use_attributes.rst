.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-client.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Another example of running the |chef client| as a non-root user involves using resources to pass |sudo cmd| commands as as an attribute on the resource. For example, the |resource service| resource uses a series of ``_command`` attributes (like ``start_command``, ``stop_command``, and so on), the |resource package|-based resources use the ``options`` attribute, and the |resource script|-based resources use the ``code`` attribute.

A command can be elevated similar to the following:

.. code-block:: ruby

   service 'apache2' do
     start_command 'sudo /etc/init.d/apache2 start'
     action :start
   end

This approach can work very well on a case-by-case basis. The challenge with this approach is often around managing the size of the |path etc sudoers| file.
