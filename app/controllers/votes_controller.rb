class VotesController < ApplicationController
	def create
	  product = Product.find(params[:product_id])
	  product.votes.create(user: current_user)

	  redirect_to root_path
	end

	def destroy
	  product = Product.find(params[:product_id])
	  product.votes.where(user: current_user).take.try(:destroy) #lo que hace es al devolver un array la 
	  #sentencia product.votes.where(user: current_user), take toma el primer elemento y try verifica que ese 
	  #elemento no sea nil para que la aplicación no se muera.

	  redirect_to root_path
	end
end
