require 'rails_helper'

# RSpec.feature 'フォルダが表示機能' do
#   background do
#     # ユーザを作成する
#     @user = User.create!(email: 'foo@example.com', password: '123456')
#     @user.folders.create!(title: 'フォルダ')
#   end
#   scenario '@userが作成したフォルダが表示される' do
#     # トップページを開く
#     visit new_user_session_path
#     expect(page).to have_content 'ログイン'
#     # # ログインフォームにEmailとパスワードを入力する
#     fill_in 'session_email', with: 'foo@example.com'
#     fill_in 'session_password', with: '123456'
#     # # ログインボタンをクリックする
#     click_on 'ログイン'
#     # # ログインに成功したことを検証する
#     expect(page).to have_content 'ログインしました'
#     expect(page).to have_content 'フォルダ'
#   end
# end