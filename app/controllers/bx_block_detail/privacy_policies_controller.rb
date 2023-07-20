module BxBlockDetail
  class PrivacyPoliciesController < ApplicationController
    skip_before_action :verify_authenticity_token


    def privacy_policy_data
      @privacy_policy = BxBlockDetail::PrivacyPolicy.find(params[:id])
      render json:{'privacy_policy': @privacy_policy}
    end

    private

      def privacy_policy_params
        params.require(:privacy_policy).permit(:title, :content)
      end

  end
end

  