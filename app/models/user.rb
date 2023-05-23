class User < ApplicationRecord
    # uidをprimary_keyとしてidに
    self.primary_key = "uid"

    # アソシエーション
    has_one :computer, dependent: :destroy
    has_one :gadget, dependent: :destroy
    accepts_nested_attributes_for :computer, :gadget
end
