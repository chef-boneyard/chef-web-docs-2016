.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When using an explicit ``gem_binary``, options must be passed as a string. When not using an explicit ``gem_binary``, |chef| is forced to spawn a |gems| process to install the |gems| (which uses more system resources) when options are passed as a string. String options are passed verbatim to the |gems| command and should be specified just as if they were passed on a command line. For example, ``--prerelease`` for a pre-release gem.

To install a gem with an options string:

.. code-block:: ruby

   gem_package("nokogiri") do
     gem_binary("/opt/ree/bin/gem")
     options("--prerelease --no-format-executable")
   end
