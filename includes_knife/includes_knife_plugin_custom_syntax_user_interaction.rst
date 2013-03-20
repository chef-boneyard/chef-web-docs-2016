.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``ui`` object provides a set of methods that can be used to define user interactions and to help ensure a consistent user experience across |knife| plugins. The following methods should be used in favor of manually handling user interactions:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Method
     - Description
   * - ``ui.ask(*args, &block)``
     - Use to xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.
   * - ``ui.ask_question(question, opts={})``
     - Use to ask a user the question contained in ``question``. If ``:default => default_value`` is passed as the second argument, ``default_value`` will be used if the user does not provide an answer. This method will respect the ``--default`` command-line option.
   * - ``ui.color(string, *colors)``
     - Use to specify a color.
   * - ``ui.color?()``
     - Indicates that colored output should be used. When output is not to a terminal, colored output is never used.
   * - ``ui.confirm(question, append_instructions=true)``
     - Use to as a Y/N question. If the user responds with ``N``, immediately exit with status code 3.
   * - ``ui.edit_data(data, parse_output=true)``
     - Use to edit data. This opens the |chef editor|.
   * - ``ui.edit_object(klass, name)``
     - Use to xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.
   * - ``ui.error``
     - Use to present an error to the user.
   * - ``ui.fatal``
     - Use to present a fatal error to the user.
   * - ``ui.highline``
     - Use to provide direct access to the `Highline object <http://highline.rubyforge.org/doc/>`_ used by many ``ui`` methods.
   * - ``ui.info``
     - Use to present a message to a user.
   * - ``ui.interchange``
     - Use to determine if the output is a data interchange format such as |json| or |yaml|.
   * - ``ui.list(*args)``
     - Use to xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.
   * - ``ui.msg(message)``
     - Use to present a message to the user.
   * - ``ui.output(data)``
     - Use to present a data structure to the user. This method will respect the output requested when the ``-F`` command-line option is used. The output will use the generic default presenter.
   * - ``ui.pretty_print(data)``
     - Use to enable pretty-print output for |json| data.
   * - ``ui.use_presenter(presenter_class)``
     - Use to specify a custom output presenter.
   * - ``ui.warn(message)``
     - Use to present a warning to the user.

For example, to show a fatal error in a plugin in the same way that it would be shown in |knife| do something similar to the following:

.. code-block:: ruby

    unless name_args.size == 1
      ui.fatal "Be sure to say hello to someone!"
      show_usage
      exit 1
   end

