class Point < ApplicationRecord
  belongs_to :admin_user

  def username
    self.admin_user
  end
end
