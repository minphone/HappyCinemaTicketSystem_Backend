class Api::V1::FacebookController < Api::V1::BaseController

  def create
    if User.find_by_email(params[:email]).nil?

      user = User.create(username: params[:username], email: params[:email], 
        gender: params[:gender], region_id: params[:region_id],
        facebook_id: params[:fb_id], profileUrl: params[:profileUrl])

      if @user.nil?
        render json: user.attributes.merge({
          :error => user.errors.full_messages.first,
          :is_verified => false
        })
      else
        render json: user.attributes.merge({
          :error => "",
          :is_verified => false
        })
      end

    else
      user = User.find_by_email(params[:email])
      render json: user.attributes.merge({
        :error => "",
        :is_verified => true
      })
    end
  end
end