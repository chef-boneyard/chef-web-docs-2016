.. This is an included how-to. 

Use the ``command`` property to specify the path to a |windows powershell| data file. For example, the following |windows powershell| script defines the ``DefaultEditor``:

.. code-block:: powershell

   Configuration 'DefaultEditor'  
   {
     Environment 'texteditor'
       {
         Name = 'EDITOR'
         Value = 'c:\emacs\bin\emacs.exe'
       }
   }

Use the following recipe to specify the location of that data file:

.. code-block:: ruby

   dsc_script 'DefaultEditor' do
     command 'c:\dsc_scripts\emacs.ps1'
   end
