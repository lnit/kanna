class Room < ActiveRecord::Base
  def updated_at_count
    self.updated_at.to_i
  end
end
