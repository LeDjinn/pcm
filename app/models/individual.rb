class Individual < ApplicationRecord
  belongs_to :company

  def full_name
    "#{self.first_name}  #{self.last_name}"
  end
end
