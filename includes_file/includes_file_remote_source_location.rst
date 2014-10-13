.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

There are many ways to define the location of a source file. By using a path:

.. code-block:: ruby

   source "http://couchdb.apache.org/img/sketch.png"

By using a node attribute:

.. code-block:: ruby

   source node['nginx']['foo123']['url']

By using attributes to define paths:

.. code-block:: ruby

   source "#{node['python']['url']}/#{version}/Python-#{version}.tar.bz2"

By defining multiple paths for multiple locations:

.. code-block:: ruby

   source "http://seapower/spring.png", "http://seapower/has.png", "http://seapower/sprung.png"

By defining those same multiple paths as an array:

.. code-block:: ruby

   source ["http://seapower/spring.png", "http://seapower/has.png", "http://seapower/sprung.png"]

When multiple paths are specified, the |chef client| will attempt to download the files in the order listed, stopping after the first successful download.
