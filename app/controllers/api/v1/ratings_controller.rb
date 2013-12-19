module Api::V1
	class RatingsController < Controller
		respond_to :json

		def top
			@ratings = Rating
			 	.includes(:player)
				.where(game_id: params[:game_id])
				.limit(10)
		end
	end
end