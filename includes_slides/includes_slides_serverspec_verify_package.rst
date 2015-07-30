.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


#. Open ``test/integration/default/serverspec/default_spec.rb``.
#. Add:

   .. code-block:: ruby
   
      require 'serverspec'
      set :backend, :exec
      
      describe 'apache' do
        it 'is awesome' do
          expect(true).to eq true
        end
        
        it 'is installed' do
          expect(package('httpd')).to be_installed
        end
      end

#. Save the file.
