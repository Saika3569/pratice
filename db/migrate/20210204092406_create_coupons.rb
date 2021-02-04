class CreateCoupons < ActiveRecord::Migration[6.0]
  def change
    create_table :coupons do |t|
      t.string :name
      t.string :phone
      t.string :taiwanid

      t.timestamps
    end
  end
end
