module Spree
  class Ad < Spree::Base
    has_attached_file :avatar,styles: {medium: "300x300>", thumb: "100x100>",large:"500x500>"}
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  end
end
