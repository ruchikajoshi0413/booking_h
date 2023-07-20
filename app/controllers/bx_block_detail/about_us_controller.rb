module BxBlockDetail
  class AboutUsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def about_data  
      @about = BxBlockDetail::AboutU.find(params[:id])
      render json:{ 'about': @about }
    end

    private
    def about_u_params
      params.require(:about_u).permit(:title, :description)
    end

  end
end
