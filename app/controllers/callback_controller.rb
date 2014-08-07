class CallbackController < ApplicationController
  def slack
    @user_name = params[:user_name]
    @text = params[:text]
    @trigger_word = params[:trigger_word]

    @text.slice! @trigger_word

    user = User.find_by_username @user_name
    linda = User.find_by_username 'chronologist'

    item = Item.new
    item.user = linda
    item.created_by = user
    item.description = @text
    item.save!

    render text: %Q[{ "text": "Alright, #{@user_name}, I've requested this for you: #{@text}" }]
  end

end
