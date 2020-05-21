require 'rails_helper'

RSpec.describe 'タスク管理機能', type: :system do
  describe 'タスク一覧画面' do
    context 'タスクを作成した場合' do
      # テストコードを it '~' do end ブロックの中に記載する
      it '作成済みのタスクが表示される' do
        # テストで使用するためのタスクを作成
        user = User.create(name: 'name', email: 'email', password: 'sadaki')
        task = Task.create(title: 'task', content: 'content',user_id: user.id)

        # タスク一覧ページに遷移
        binding.irb
        visit tasks_path

        # visitした（遷移した）page（タスク一覧ページ）に「task」という文字列が
        # have_contentされているか。（含まれているか。）ということをexpectする（確認・期待する）
        expect(page).to have_content 'task'
        # expectの結果が true ならテスト成功、false なら失敗として結果が出力される
      end
    end
  end


  describe 'タスク登録画面' do
    context '必要項目を入力して、createボタンを押した場合' do
      it 'データが保存される'
      end
    end

  describe 'タスク詳細画面' do
     context '任意のタスク詳細画面に遷移した場合' do
       it '該当タスクの内容が表示されたページに遷移する'
      end
  end
end
