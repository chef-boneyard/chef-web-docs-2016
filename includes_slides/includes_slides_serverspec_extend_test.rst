.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


#. Open ``test/integration/default/serverspec/default_spec.rb``.
#. Add:

   .. code-block:: ruby
   
      describe 'apache' do
        it 'is installed' do
          expect(package 'httpd').to be_installed
        end
      
        it 'is running' do
          expect(service 'httpd').to be_running
        end
      
        it 'is listening on port 80' do
          expect(port 80).to be_listening
        end
      
        it 'displays a custom home page' do
          expect(command('curl localhost').stdout).to match /hello/
        end
      end

#. Save the file.
