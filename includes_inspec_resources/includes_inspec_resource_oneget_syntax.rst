.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``oneget`` |inspec resource| block declares a package and (optionally) a package version:

.. code-block:: ruby

   describe oneget('name') do
     it { should be_installed }
   end

where

* ``('name')`` must specify the name of a package, such as ``'VLC'``
* ``be_installed`` is a valid matcher for this |inspec resource|
