class User < ApplicationRecord
  has_many :causes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def rate(event)
    # Returns numerical score corresponding to current user's predicted interest in a given event.
  end
end
