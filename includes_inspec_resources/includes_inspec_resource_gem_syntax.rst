.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``gem`` |inspec resource| block declares a package and (optionally) a package version:

.. code-block:: ruby

   describe gem('gem_package_name') do
     it { should be_installed }
   end

where

* ``('gem_package_name')`` must specify a |gem| package, such as ``'rubocop'``
* ``be_installed`` is a valid matcher for this |inspec resource|
