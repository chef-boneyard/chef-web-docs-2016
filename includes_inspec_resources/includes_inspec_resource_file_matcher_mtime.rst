.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``mtime`` matcher tests if the file modification time for the file matches the specified value:

.. code-block:: ruby

   its('mtime') { should eq 'October 31 2015 12:10:45' }

or:

.. code-block:: bash

   describe file('/').mtime.to_i do
     it { should <= Time.now.to_i }
     it { should >= Time.now.to_i - 1000}
   end
