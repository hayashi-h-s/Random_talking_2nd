require 'rails_helper'

# 参考
# nameを一意にする
#nameの長さを調整
# https://github.com/TadayoshiOtsuka/NateMate/blob/master/spec/models/user_spec.rb

RSpec.describe User, type: :model do
  before do
    @user = build(:user)
  end

  it 'ユーザー登録が可能である' do
    expect(build(:user)).to be_valid
  end

  # it'nameが存在しないユーザーを許可しない' do
  #   @user.name = nil
  #   @user.valid?
  #   expect(@user.errors).to be_added(:blank)
  # end  

  # it 'nameが空白のユーザーを許可しない' do
  #   @user.name = '   '
  #   @user.valid?
  #   expect(@user.errors).to be_added(:name, :blank)
  # end

  it 'emailが存在しないユーザーを許可しない' do
    @user.email = nil
    @user.valid?
    expect(@user.errors).to be_added(:email, :blank)
  end  

  it 'passwordが存在しないユーザーを許可しない' do
    @user.password = @user.password_confirmation = ' ' * 6
    @user.valid?
    expect(@user.errors).to be_added(:password, :blank)
  end

  it 'emailが空では登録できないこと' do
    user = build(:user, email: nil)
    user.valid? #有効か？
    # expect(user.errors[:email]).to include('入力してください')
  end

  it 'passwordとpassword_confirmationの一致しないユーザーを許可しない' do
    @user.password = 'password'
    @user.password_confirmation = 'aaaaaaaa'
    @user.valid?
    expect(@user.errors).to be_added(:password_confirmation, :confirmation, attribute: 'パスワード')
  end  

  it 'passwordが6文字未満のユーザーを許可しない' do
    @user.password = 'a' * 5
    @user.valid?
    expect(@user.errors).to be_added(:password, :too_short, count: 6)
  end  

  it 'passwordが６文字以上のユーザーを許可する' do
    @user.password = @user.password_confirmation = 'a' * 6
    expect(@user).to be_valid
  end  

  # it 'nameが一意でないユーザーを許可しない' do
  #   user  = create(:user, name: 'sample')
  #   user2 = build(:user, name: 'sample')
  #   user2.valid?
  #   expect(user2.errors).to be_added(:name, :taken, value: 'sample')
  # end
  it 'emailは全て小文字で保存される' do
    @user.email = 'SAMPLE@SAMPLE.JP'
    @user.save!
    expect(@user.reload.email).to eq 'sample@sample.jp'
  end  

end