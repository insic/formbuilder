Formbuilder.registerField 'headingtext',

  order: 1

  view: """

  """

  edit: """
  <%= Formbuilder.templates['edit/align']() %>
  """

  addButton: """
    <span class='symbol'><span class='fa fa-font'></span></span> Heading Text
  """

  defaultAttributes: (attrs) ->
    attrs.label = "Heading here"
    attrs.field_options.description = 'More text goes here....'
    attrs.field_options.align_option = 'center'
    attrs.heading = true
    attrs
