require 'rails_helper'

RSpec.describe User, type: :model do
    describe 'ユーザー新規登録' do  #ユーザー新規登録についてのテストコードを記述
      it 'nicknameが空では登録できない'do #nicknameが空では登録できなテストコードを記述
        user = FactoryBot.build(:user) #Userインスタンス生成
        user.nickname = '' #nicknemeを空にする
        user.valid?
        expect(user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'emailが空では登録できない' do #emailが空では登録できないテストコードを記述
        user = FactoryBot.build(:user) #Userインスタンス生成
        user.email = '' #nicknemeを空にする
        user.valid?
        expect(user.errors.full_messages).to include("Email can't be blank")
      end
  end
end
