$(document).on 'click', '.item.checkbox input[type=checkbox]', ->
  $(this).parent().parent('form').submit()