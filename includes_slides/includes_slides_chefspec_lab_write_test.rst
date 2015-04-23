.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


#. Open ``spec/unit/default.rb``.
#. Add:

   .. code-block:: ruby
   
      require 'chefspec'
      
      describe 'apache::default' do
        let(:chef_run) do
          ChefSpec::Runner.new.converge(described_recipe)
        end
      
        it 'installs apache' do
          expect(chef_run).to install_package('httpd')
        end
      end

#. Save the file.
