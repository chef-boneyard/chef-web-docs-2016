.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When trying to decrypt a |chef 11| format data bag item with |chef 10-16| or lower, you will see an error like this:

.. code-block:: bash

   shell$ knife data bag show secret-10-stable bar -c ~/opscode-ops/chef-oss-dev/.chef/knife.rb -s password
   ERROR: knife encountered an unexpected error
   This may be a bug in the 'data bag show' knife command or plugin
   Please collect the output of this command with the `-VV` option before filing a bug report.
   Exception: NoMethodError: undefined method `unpack' for #<Hash:0x007ff5b264e1f0>

The above error output is from |knife|; the |chef client| will fail with a similar error.