# Parsing and sending

def body_builder(hash = {'学籍番号'=>16115, '氏名'=>'鈴木徹志郎', '１１５国試使解説'=>1, '１１４国試使解説'=>nil, '１１３国試使解説'=>nil, 'QB6'=>1, 'QB7'=>1, '定価'=>23430, '割引後価格'=>nil})
  name = "#{hash['氏名']}様\n"

  stuff = ""
  if hash['１１５国試使解説']
    stuff += "- １１５国試使解説\n"
  end
  if hash['１１4国試使解説']
    stuff += "- １１4国試使解説\n"
  end
  if hash['１１3国試使解説']
    stuff += "- １１3国試使解説\n"
  end
  if hash['QB6']
    stuff += "- QB6\n"
  end
  if hash['QB7']
    stuff += "- QB7\n"
  end
  price = "#{hash['定価']}円\n"

  puts "#{name}#{stuff}#{price}"
end

require 'roo'

xlsx = Roo::Spreadsheet.open('./test_books.xlsx')

sheet = xlsx.sheet(0)

sheet.parse(headers: true).each do |hash|
  puts hash
end
