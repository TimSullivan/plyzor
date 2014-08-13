class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :created_by, class_name: 'User', foreign_key: 'created_by_user_id'

  belongs_to :completed_by, class_name: 'User', foreign_key: 'completed_by_user_id'

  scope :incomplete, -> { where('completed_at is null') }
  scope :complete, -> { where('completed_at is not null') }

  def complete
    self.completed_at != nil
  end

  def complete=(is_complete)
    if is_complete && self.completed_at.nil?
      self.completed_at = Time.now
    elsif not is_complete
      self.completed_at = nil
    end
  end

end
