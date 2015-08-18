class Dashboard < ActiveRecord::Base
  has_many :users
  has_many :newsfeeds
  validates :user_id, presence: true

  def set_user(user)
    self.user_id = user.id
  end

end
