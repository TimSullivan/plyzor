<% if @item.complete %>
$('ul#completed-list').append('<%= j(render partial: "completed", object: @item) %>')
$('#edit_item_<%= @item.id %>').parent().remove()
<% end %>