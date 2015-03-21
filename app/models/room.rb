class Room < ActiveRecord::Base
  belongs_to :user

  def updated_at_count
    self.updated_at.to_i
  end
end
