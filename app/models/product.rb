# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  url         :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Product < ActiveRecord::Base
	belongs_to :user #agrega un atributo a los productos para poder acceder al usuario y con ese usuario obtener el 
	#nombre id etc.
	has_many :comments #agrega un metodo comments al modelo productos para agregar los comentarios de ese producto
	has_many :votes
	validates :name, presence: true
	validates :url, presence: true

	def voted_by?(user)
	  votes.exists?(user: user)
	end
	
end
