.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A |chef| template is an |erb| template. An |erb| template allows |ruby| code to be embedded inside a text file within specially formatted tags. |ruby| code can be embedded using expressions and statements. An expression is delimited by ``<%=`` and ``%>``. For example::

   ``<%= "my name is #{$ruby}" %>``

A statement is delimited by ``<%`` and ``-%>``. For example::

   if false
      # this won't happen
   elsif nil
      # this won't either
   else
      # code here will run though
   end

Using a |ruby| expression is the most common approach because this is how all variables sent to a template are referenced. Whenever a template needs to use an ``each``, ``if``, or ``end``, use a |ruby| statement.

When a template is rendered, |ruby| expressions and statements are evaluated by |chef|. The variables listed in the resource's variables attribute and the node object are identified. |chef| then passes these variables to the template, where they will be accessible as instance variables within the template; a node object can be accessed just as if it were part of a recipe, using the same node.

For example, a simple template resource like this::

   node[:fqdn] = "latte"
   template "/tmp/foo" do
     source "foo.erb"
     variables({
       :x_men => "are keen"
     })
   end

And a simple |erb| template like this::

   The node <%= node[:fqdn] %> thinks the x-men <%= @x_men %>

Would render something like::

   The node latte thinks the x-men are keen

Even though this is a very simple example, the full capabilities of |ruby| can be used to tackle even the most complex and demanding template requirements.