module Spree
  module Api
    class AdsController < Spree::Api::BaseController
      skip_before_action :authenticate_user

      def index
        @ads  = Spree::Ad.all
        respond_with(@ads) do |format|
          format.json
        end
      end
    end
  end
end