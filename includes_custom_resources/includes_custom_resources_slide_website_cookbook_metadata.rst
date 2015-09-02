.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. This file is hooked into a slide deck


Update the ``metadata.rb`` file:

.. code-block:: ruby

   name              'website'
   maintainer        'Your Company, Inc.'
   maintainer_email  'you@example.com'
   license           'Apache 2.0'
   description       'Demo cookbook for custom resources in Chef 12.5'
   long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
   version           '0.1.0'
