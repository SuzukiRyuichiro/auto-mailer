# Parsing and sending
require 'roo'
require_relative 'body-builder'
require_relative 'mailer'

xlsx = Roo::Spreadsheet.open('./test_books.xlsx')

sheet = xlsx.sheet(0)

sheet.parse(headers: true).each do |hash|
  text = body_builder(hash)
  mailer("b1801432@gl.aiu.ac.jp", text)
end
