class Message
  include ActiveModel::Model

  attr_accessor :first_name, :last_name, :email, :phone_number, :contact_method, :location, :subject, :body
  validates :first_name, :last_name, :email, :subject, :body, presence: true

end
