.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``pip`` |inspec resource| block declares a package and (optionally) a package version:

.. code-block:: ruby

   describe pip('Jinja2') do
     it { should be_installed }
   end

where

* ``'Jinja2'`` is the name of the package
* ``be_installed`` tests to see if the ``Jinja2`` package is installed
