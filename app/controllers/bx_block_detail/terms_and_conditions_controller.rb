module BxBlockDetail
  class TermsAndConditionsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def terms_and_condition_data
      @term = BxBlockDetail::TermsAndCondition.find(params[:id])
      render json: {'term': @term}
    end
  
    private

      def terms_and_condition_params
        params.require(:terms_and_condition).permit(:title, :content)
      end

  end
end