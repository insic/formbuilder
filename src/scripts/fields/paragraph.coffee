Formbuilder.registerField 'paragraph',

  order: 5

  view: """

  """

  edit: """
  <%= Formbuilder.templates['edit/align']() %>
  """

  addButton: """
    <span class="symbol">&#182;</span> Paragraph
  """

  defaultAttributes: (attrs) ->
    attrs.label = ""
    attrs.field_options.description = 'More text goes here....'
    attrs.heading = false
    attrs
