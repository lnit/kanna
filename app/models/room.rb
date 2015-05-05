class Room < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true, length: { maximum: 200 }
  validates :body, length: { maximum: 20000 }

  def updated_at_count
    self.updated_at.to_i
  end
end
