Formbuilder.registerField 'multicolumntext',

  order: 65

  view: """
    <div class="input-line">
    <% for (i in (rf.get(Formbuilder.options.mappings.OPTIONS) || [])) { %>
    <span style="width:<%= rf.get(Formbuilder.options.mappings.OPTIONS)[i].spanwidth %>;">
      <% if (rf.get(Formbuilder.options.mappings.INCLUDE_LABEL)) { %>
      <label><%= rf.get(Formbuilder.options.mappings.OPTIONS)[i].label %>&nbsp;</label>
      <% } %>
      <textarea rows="<%= rf.get(Formbuilder.options.mappings.ROW_COUNT) %>" style="width:100%;"></textarea>
    </span>
    <% } %>
    </div>
  """

  edit: """
    <%= Formbuilder.templates['edit/text_options']({ includeLabel: true, includeRowCount: true }) %>
  """

  addButton: """
    <span class='symbol'><span class='fa fa-bars'></span></span> Multi Column Textarea
  """

  defaultAttributes: (attrs) ->
    attrs.field_options.options = [
      label: "",
      spanwidth: "24%"
    ,
      label: "",
      spanwidth: "24%"
    ,
      label: "",
      spanwidth: "24%"
    ,
      label: "",
      spanwidth: "24%"
    ]
    attrs.field_options.include_label_option = true;
    attrs.field_options.row_count_option = 10;
    attrs
