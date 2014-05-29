Formbuilder.registerField 'radio',

  order: 15

  view: """
    <div class="input-line">
    <% for (i in (rf.get(Formbuilder.options.mappings.OPTIONS) || [])) { %>
        <label class='fb-option'>
          <input type='radio' <%= rf.get(Formbuilder.options.mappings.OPTIONS)[i].checked && 'checked' %> onclick="javascript: return false;" />
          <%= rf.get(Formbuilder.options.mappings.OPTIONS)[i].label %>
        </label>
    <% } %>
    

    <% if (rf.get(Formbuilder.options.mappings.INCLUDE_OTHER)) { %>
      <span class='other-option'>
        <label class='fb-option'>
          <input type='radio' />
          Other
        </label>

        <input type='text' />
      </span>
    <% } %>
    </div>
  """

  edit: """
    <%= Formbuilder.templates['edit/options']() %>
  """

  addButton: """
    <span class="symbol"><span class="fa fa-circle-o"></span></span> Radio Button
  """

  defaultAttributes: (attrs) ->
    # @todo
    attrs.field_options.options = [
      label: "",
      checked: false
    ,
      label: "",
      checked: false
    ]

    attrs