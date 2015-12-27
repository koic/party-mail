require File.expand_path(File.dirname(__FILE__) + '/../lib/mail_gen')

describe 'generate_text' do
  let(:text) { <<TEXT
ボヤキ飲み会のご案内です。

 * 日時: 02月19日(金) 19:30 乾杯
 * 場所: 立ち呑み処 ボヤキ (http://r.tabelog.com/tokyo/A1311/A131101/13105840/)
 * 予算: 2,500円
 * 予約者名: koic
 * 緊急連絡先 (koic携帯) : 090-9999-9999 / nomarebu@example.com
 * 参加者: chibamem, ryhmrt, kunitoo

当日は、19:20に御徒町駅南口の改札前に集合をお願いします。

  予約の都合上、万が一、キャンセル、または遅刻される場合は、
  当日16:00までに必ずご連絡ください。

全員揃ってのスムーズな乾杯にご協力をお願いします。
TEXT
  }

  subject { generate_text('data.yaml.sample') }

  it { should == text }
end
