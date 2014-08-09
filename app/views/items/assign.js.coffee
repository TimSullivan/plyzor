<% if @saved %>
$("span#user_<%= dom_id(@item) %>").text("<%= @user.username %>")
<% end %>