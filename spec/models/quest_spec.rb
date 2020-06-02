# frozen_string_literal: true

require 'rails_helper'

describe Quest do
  let(:user) { create(:user) }
  describe '#create' do
    it '全ての必須登録があれば登録できること' do
      quest = build(:quest, user_id: user.id)
      quest.valid?
      expect(quest).to be_valid
    end

    it 'nameがなければ登録出来ないこと' do
      quest = build(:quest, name: '')
      quest.valid?
      expect(quest.errors[:name]).to include('を入力してください')
    end

    it 'priceがなければ登録出来ないこと' do
      quest = build(:quest, price: '')
      quest.valid?
      expect(quest.errors[:price]).to include('を入力してください')
    end

    it 'user_idがなければ登録出来ないこと' do
      quest = build(:quest, user_id: '')
      quest.valid?
      expect(quest.errors[:user_id]).to include('を入力してください')
    end
  end
end
