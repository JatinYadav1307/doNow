class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :trials
  has_many :habits
  has_many :todos
  has_many :tags
  after_initialize :init

    def init
      self.health  ||= 50
      self.exp  ||= 0
      self.level  ||= 0
    end
  acts_as_token_authenticatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

