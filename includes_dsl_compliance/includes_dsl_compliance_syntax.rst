.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource directory| resource block declares a directory and the permissions needed on that directory. For example:

.. code-block:: ruby

   control 'sshd-8' do
     impact 0.6
     title 'Server: Configure the service port'
     desc '
       Always specify which port the SSH server should listen to.
       Prevent unexpected settings.
     '
     describe sshd_conf do
       its('Port') { should eq('22') }
     end
   end

where

* ``'sshd-8'`` is the name of the control
* ``impact``, ``title``, and ``desc`` define metadata that fully describes the importance of the control, its purpose, with a succinct and complete description; these three methods display their data in the |chef compliance| web user interface
* ``impact`` is an integer that measures the importance of the compliance results and must be a value between ``0.0`` and ``1.0``
* ``describe`` is a block that contains at least one test. A ``control`` block must contain at least one ``describe`` block, but may contain as many as required
* ``sshd_conf`` is an |inspec resource|. For the full list of |inspec resource|, see https://docs.chef.io/inspec_reference.html.
* ``its('Port')`` is the matcher; ``{ should eq('22') }`` is the test. A ``describe`` block must contain at least one matcher, but may contain as many as required
