# -*- coding: utf-8 -*-

require 'mail_gen'

describe 'メール文の生成' do
  before(:each) do
    @text = <<TEXT
美味しい料理と日本酒の飲み会のご案内です。

 * 日時: 2月19日(金) 19:30 乾杯
 * 場所: でり坊 五反田店 (http://www.delibo.com/gotanda/)
 * 予算: 4,000円
 * 予約者名: koic
 * 緊急連絡先 (koic携帯) : 090-9999-9999 / nomarebu@nomare.bu
 * 参加者: igaiga555, beakmark, chiba777

当日は、19:20に五反田駅の改札前に集合をお願いします。

  予約の都合上、万が一、キャンセル、または遅刻される場合は、
  当日16:00までに必ずご連絡ください。

全員揃ってのスムーズな乾杯にご協力をお願いします。
TEXT
  end

  it { generate_text('data.yaml').should == @text }
end
