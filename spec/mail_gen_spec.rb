# -*- frozen-string-literal: true -*-

require File.expand_path(File.dirname(__FILE__) + '/../lib/mail_gen')

describe 'generate_text' do
  let(:text) { <<TEXT
CROSS をしのぶ会 w/ ursmのご案内です。

 * 日時: 02月29日(月) 19:00 乾杯
 * 場所: 肉のテーマパーク まる豚 (http://tabelog.com/tokyo/A1310/A131002/13086497/)
 * 予算: 2,000円
 * 予約者名: koic
 * 緊急連絡先 (koic携帯) : 090-9999-9999 / nomarebu@example.com
 * 参加者: flada-auxv, hibariya, hrysd, kakutani, koic, kunitoo, mhirata, takkanm, tanaka51, ursm

当日は、19:00に神田駅北口の改札前に集合をお願いします。

  予約の都合上、万が一、キャンセル、または遅刻される場合は、
  当日16:00までに必ずご連絡ください。

全員揃ってのスムーズな乾杯にご協力をお願いします。
TEXT
  }

  subject { generate_text('data.yaml.sample') }

  it { should == text }
end
