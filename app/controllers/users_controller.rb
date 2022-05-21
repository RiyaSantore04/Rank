class UsersController < ApplicationController
    def index
    	@users = User.all
    	rank = [1..3]
		@topers = User.where(id: rank)
	end

	def new
		@user = User.new
	end

	def show
	@user = User.find(params[:id])

	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user
		else
			render :new
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update (user_params)
			redirect_to @user
		else
			render :edit
		end
	end

	def destroy
		
		@user = User.find(params[:id])
		@user.destroy
		redirect_to root_path
	end

	def rank
		rank = [1..3]
		@user = User.where(id: rank)
	end

	def active
		# @user = User.find(params[:id])
		# return @user.status ? "active" : "inactive"
		# if @user.active
		# 	redirect_to root_path
		# else
		# 	render :update
		# end

		 @user = User.find(params[:id])
		 if @user.activestatus?
		 	@user.update_attribute(:activestatus, false)
        else
        	@user.update_attribute(:activestatus, true)
        end 

	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :contact, :rank, :activestatus)
	end
end



<%#= button_to 'Unlike', likes_path( user_id: current_user.id , likeable_id: post.id,likeable_type: Post), method: :delete %>
      