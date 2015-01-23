.. This is an included how-to. 


A rule that always fire for the specified message type:

.. code-block:: ruby

   rule "test_rule" on action
   when
     true
   then
     notify("some_alias")
   end

where every ``action`` will notify ``"some_alias"``.
