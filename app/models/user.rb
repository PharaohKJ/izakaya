class User < ApplicationRecord
  def self.from_auth(auth)
    ident = { uid: auth['uid'] }
    user = find_by(ident) || create(ident)

    user.update!(
      provider:  auth['provider'],
      email:     auth['info']['email'],
      nickname:  auth['info']['nickname'],
      image_url: auth['info']['image']
    )
    user || nil
  end
end
