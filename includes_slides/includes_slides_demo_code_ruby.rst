.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.

Ruby code:

.. code-block:: ruby

   some "ruby" do
     stuff
   end

For example, a DSC script:

.. code-block:: ruby
       
   dsc_script 'emacs' do
     code <<-EOH
       Environment 'texteditor'
         {
           Name = 'EDITOR'
           Value = 'c:\\emacs\\bin\\emacs.exe'
         }
     EOH
   end
