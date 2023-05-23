class Gadget < ApplicationRecord
    self.primary_key = "user_id"
    
    belongs_to :user
    
    serialize :mouse_items, Array
    serialize :keyboard_items, Array
    serialize :monitor_items, Array
    serialize :audio_items, Array
    serialize :pad_items, Array
    serialize :phone_items, Array


end
