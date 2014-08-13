<% if @item.complete %>
$('ul#completed-list').prepend('<%= j(render partial: "completed", object: @item) %>')
$('#edit_item_<%= @item.id %>').parent().remove()
<% end %>