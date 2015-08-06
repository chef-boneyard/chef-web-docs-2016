.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``variables`` property of the |resource template| resource can be used to reference a partial template file by using a |ruby hash|. For example:

.. code-block:: ruby

   template '/file/name.txt' do
     variables :partials => {
       'partial_name_1.txt.erb' => 'message',
       'partial_name_2.txt.erb' => 'message',
       'partial_name_3.txt.erb' => 'message'
     },
   end

where each of the partial template files can then be combined using normal |ruby| template patterns within a template file, such as:

.. code-block:: ruby

   <% @partials.each do |partial, message| %>
     Here is <%= partial %>
     <%= render partial, :variables => {:message => message} %>
   <% end %>
