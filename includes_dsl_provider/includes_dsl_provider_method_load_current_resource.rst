.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``load_current_resource`` method is used to find a resource on a node based on a collection of attributes. These attributes are defined in a lightweight resource and are loaded by the |chef client| when processing a recipe during a |chef client| run. This method will ask the |chef client| to look on the node to see if a resource exists with specific matching attributes.

For example:

.. code-block:: ruby

   def load_current_resource
     @current_resource = Chef::Resource::TransmissionTorrentFile.new(@new_resource.name)
     Chef::Log.debug('#{@new_resource} torrent hash = #{torrent_hash}')
     @transmission = Opscode::Transmission::Client.new('foo:#{@new_resource.att1}@#{@new_resource.att2}:#{@new_resource.att3}/path')
     @torrent = nil
     begin
       @torrent = @transmission.get_torrent(torrent_hash)
       Chef::Log.info("Found existing #{@new_resource} in swarm with name of '#{@torrent.name}' and status of '#{@torrent.status_message}'")
       @current_resource.torrent(@new_resource.torrent)
     rescue
       Chef::Log.debug('Cannot find #{@new_resource} in the swarm')
     end
     @current_resource
   end

In the previous example, if a resource exists with matching attributes, the |chef client| does nothing and if a resource does not exist with matching attributes, the |chef client| will enforce the state declared in ``new_resource``.
