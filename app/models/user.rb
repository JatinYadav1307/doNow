class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :trials
  has_many :habits
  has_many :todos
  has_many :tags
  has_many :notes
  has_one :record
  after_create :init

  def init
    Record.create(:health => 50, :experience => 0, :level => 0, :user_id => self.id)
  end
  acts_as_token_authenticatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

