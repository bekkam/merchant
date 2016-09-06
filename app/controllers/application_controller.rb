class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def authorize
    redirect_to root_path unless current_user
  end


   def load_order
        @order = Order.find_or_initialize_by(id: session[:order_id], status: "unsubmitted", user_id: session[:user_id])
        # new_record? is true when the record has not yet been stored to the DB
        if @order.new_record?
          @order.save!
          session[:order_id] = @order.id
        end
    end


end
