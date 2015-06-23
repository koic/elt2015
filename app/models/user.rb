class User < ActiveRecord::Base
  has_many :foods

  class << self
    def create_with_omniauth(auth)
      create! do |user|
        user.nickname = auth['info']['nickname']
        user.uid = auth['uid']
        user.provider = auth['provider']
      end
    end
  end
end
