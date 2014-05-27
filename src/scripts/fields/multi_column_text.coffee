Formbuilder.registerField 'multicolumntext',

  order: 60

  view: """
    <div class="input-line">
    <% for (i in (rf.get(Formbuilder.options.mappings.OPTIONS) || [])) { %>
    <span>
      <% if (rf.get(Formbuilder.options.mappings.INCLUDE_LABEL)) { %>
      <label><%= rf.get(Formbuilder.options.mappings.OPTIONS)[i].label %>&nbsp;</label>
      <% } %>
      <input type='text'/>
    </span>
    <% } %>
    </div>
  """

  edit: """
    <%= Formbuilder.templates['edit/text_options']({ includeLabel: true }) %>
  """

  addButton: """
    <span class='symbol'><span class='fa fa-font'></span></span> 2 Column Text
  """

  defaultAttributes: (attrs) ->
    attrs.field_options.options = [
      label: "",
      checked: false
    ,
      label: "",
      checked: false
    ,
      label: "",
      checked: false
    ,
      label: "",
      checked: false
    ]
    attrs
