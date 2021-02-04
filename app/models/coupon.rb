class Coupon < ApplicationRecord
  validates :name, :phone , presence: true
  validates :taiwanid, taiwanese_id: {message: "「您的身份證字號有誤，請確認後重新輸入」"}
  validates :taiwanid, uniqueness: true

end
