class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ���[�U�[���T�C���C�������A���[�U�[�y�[�W (show) �Ƀ��_�C���N�g����B
    else
      flash.now[:error] = 'Invalid email/password combination' 
      render 'new'
    end
  end
  
  def destroy
  end
end
