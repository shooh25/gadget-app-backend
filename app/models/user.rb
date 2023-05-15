class User < ApplicationRecord
    # uidをprimary_keyとしてidに
    self.primary_key = "uid"

    # アソシエーション
    has_one :computer
end
