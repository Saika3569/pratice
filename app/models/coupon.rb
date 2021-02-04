class Coupon < ApplicationRecord
  validates :name, :phone, :taiwanid , presence: true
  validates :taiwanid, taiwanese_id: true
end
