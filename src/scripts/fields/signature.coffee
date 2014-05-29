Formbuilder.registerField 'signature',

  order: 5

  view: """
  <div class="signature-wrapper clearfix">
    <div style="float:<%= rf.get(Formbuilder.options.mappings.SIGNATURE_POSITION) %>" class="signature-holder">
      <div class="signature-box" id="AUTO_FILL_SIGNATURE" name="AUTO_FILL_SIGNATURE"></div>
      <p><%= rf.get(Formbuilder.options.mappings.SIGNATURE_TEXT) %></p>
    </div>
  </div>
  """

  edit: """
  <%= Formbuilder.templates['edit/signature_options']() %>
  """

  addButton: """
    <span class="symbol"><span class='fa fa-pencil'></span></span> Signature
  """

  defaultAttributes: (attrs) ->
    attrs.label = ""
    attrs.field_options.description = ''
    attrs.field_options.signature_text = 'Signature'
    attrs.field_options.signature_position = 'right'
    attrs.heading = false
    attrs
