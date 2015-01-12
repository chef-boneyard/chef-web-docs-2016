.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Matchers are available for files and directories. Use this matcher to define audits for directories that test if the directory exists, is mounted, and linked to. The following matchers are available for directories:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Matcher
     - Description, Example
   * - ``be_directory``
     - Use to test if directory exists. For example:
       
       .. code-block:: ruby
       
          it "should be a directory" do
            expect(file("/var/directory")).to be_directory
          end
   * - ``be_linked_to``
     - Use to test if a subject is linked to the named directory. For example:
       
       .. code-block:: ruby
       
          it "should be linked to the named directory" do
            expect(file("/etc/directory")).to be_linked_to("/etc/some/other/directory")
          end
   * - ``be_mounted``
     - Use to test if a directory is mounted. For example:
       
       .. code-block:: ruby
       
          it "should be mounted" do
            expect(file("/")).to be_mounted
          end

       and for directories with a single attribute that requires testing:

       .. code-block:: ruby
       
          it "should be mounted with an ext4 partition" do
            expect(file("/")).to be_mounted.with( :type => 'ext4' )
          end

       and for directories with multiple attributes that require testing:

       .. code-block:: ruby
       
          it "should be mounted only with certain attributes" do
            expect(file("/")).to be_mounted.only_with(
              :attribute => 'value',
              :attribute => 'value',
          )
          end
