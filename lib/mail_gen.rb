# -*- coding: utf-8 -*-

require 'erb'
require 'yaml'

def generate_text(data_path)
  data = YAML.load(File.read(data_path))

  title = data['title']
  date = data['date']
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

  ERB.new(File.read('template.txt')).result(binding)
end
