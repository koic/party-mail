# -*- frozen-string-literal: true -*-

require 'rubygems'
require 'haml'
require 'yaml'
require 'time'

def generate_text(data_path)
  data = YAML.load(File.read(data_path))

  title = data['title']
  t = Time.parse(data['date'])
  days = %w(日 月 火 水 木 金 土)
  date = t.strftime('%m月%d日') + "(#{days[t.wday]}) " + t.strftime('%H:%M')
  bar_name = data['bar_name']
  bar_url = data['bar_url']
  budget = data['budget']
  host = data['host']
  contact_number = data['contact_number']
  contact_email = data['contact_email']
  entries = data['entries'].join(', ')
  rendezvous_at_time = data['rendezvous_at_time']
  rendezvous_point = data['rendezvous_point']
  deadline_for_cancel = data['deadline_for_cancel']

  mail_text = Haml::Engine.new(File.read('template.txt')).render(binding)

  # Workaround fix https://travis-ci.org/koic/party-mail/builds/226291753
  Gem::Version.new(Haml::VERSION) >= Gem::Version.new('5.0.0') ? mail_text.chomp : mail_text
end

if __FILE__ == $0
  print generate_text('data.yaml')
end
