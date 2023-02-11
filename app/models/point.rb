class Point < ApplicationRecord
  belongs_to :admin_user

  def email
    self.admin_user.email
  end

  def name
    self.admin_user.name
  end
end
