class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :created_by, class: 'User', foreign_key: 'created_by_user_id'

  scope :incomplete, -> { where('completed_at is null') }

end
