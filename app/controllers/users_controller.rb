class UsersController < ApplicationController
  # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

  # def items_index
  #   user = User.find(params[:user_id])
  #   items = user.items
  #   render json: items, include: :user
  # end

  # def item
  #   item = Item.find(params[:id])
  #   render json: item, include: :user
  # end

  # private

  # def render_not_found_response
  #   render json: { error: "Dog house not found" }, status: :not_found
  # end
end
