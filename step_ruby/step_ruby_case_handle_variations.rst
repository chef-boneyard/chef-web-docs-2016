.. This is an included how-to. 

The following example shows how a case statement can be used to tell the |chef client| how to handle different versions of the |jdk|:

.. code-block:: ruby

   case jdk_version
   when '6'
     tarball_url = node['java']['jdk']['6'][arch]['url']
     tarball_checksum = node['java']['jdk']['6'][arch]['checksum']
   when '7'
     tarball_url = node['java']['jdk']['7'][arch]['url']
     tarball_checksum = node['java']['jdk']['7'][arch]['checksum']
   end
