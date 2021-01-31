class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{6,12}\z/
  validates :password, presence: true,
            format: { with: VALID_PASSWORD_REGEX,
             message: "は半角6~12文字英大文字・小文字・数字それぞれ１文字以上含む必要があります"}
  
  with_options presence: true do
    with_options format: {with: /\A[ぁ-んァ-ン一-龥]/}
      validates :kanji_first_name
      validates :kanji_last_name
    end

    with_options format: {with: /\A[ァ-ヶー－]+\z/}
      validates :kana_first_name
      validates :kana_last_name
    end
  end
end