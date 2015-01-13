.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Matchers are available for ports and may be used to define audits that test if a port is listening. The following matchers are available:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Matcher
     - Description, Example
   * - ``be_listening``
     - Use to test if the named port is listening. For example:
       
       .. code-block:: ruby
       
          it "should be listening" do
            expect(port(23)).to be_listening
          end

       or to test if the named port is not listening:

       .. code-block:: ruby
       
          it "should not be listening" do
            expect(port(23)).to_not be_listening
          end

       To test for a specific port types use ``.with("port_type")``. For example, UDP:

       .. code-block:: ruby
       
          it "should be listening with UDP" do
            expect(port(23)).to_not be_listening.with("udp")
          end

       and UDP6:

       .. code-block:: ruby
       
          it "should be listening with UDP6" do
            expect(port(23)).to_not be_listening.with("udp6")
          end

       and TCP:

       .. code-block:: ruby
       
          it "should be listening with TCP" do
            expect(port(23)).to_not be_listening.with("tcp")
          end

       and TCP6:

       .. code-block:: ruby
       
          it "should be listening with TCP6" do
            expect(port(23)).to_not be_listening.with("tcp6")
          end
