class ApiKey < ApplicationRecord

	before_create :generate_access_token

	#field :access_token, type: String

	validates :access_token, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: true }

	belongs_to :user

	private

		def generate_access_token
			begin
				access_token = SecureRandom.hex
				self.access_token = access_token
			end while self.class.where(:access_token => access_token).count != 0
		end

end
