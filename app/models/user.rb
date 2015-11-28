class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :trials
  has_many :habits
  has_many :todos
  has_many :tags
  has_many :notes
  has_many :dailies
  has_one :record
  after_create :init
  before_destroy :removeRecord

  def init
    Record.create(:health => 100, :experience => 0, :level => 0, :gold => 0, :silver => 0, :diamonds => 0, :user_id => self.id, )
  end

  def removeRecord
    Record.find(User.find(self.id).record.id).delete
  end
  acts_as_token_authenticatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

