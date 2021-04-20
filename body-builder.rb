def body_builder(hash)
  name = "#{hash['氏名']}様\n"
  stuff = ''
  stuff += "<li>１１５国試使解説</li>" if hash['１１５国試使解説']
  stuff += "<li>１１４国試使解説</li>" if hash['１１４国試使解説']
  stuff += "<li>１１３国試使解説</li>" if hash['１１３国試使解説']
  stuff += "<li>QB6</li>" if hash['QB6']
  stuff += "<li>QB7</li>" if hash['QB7']

  price = "#{hash['定価']}円\n"

  return "<html><h1>#{name}</h1><ul>#{stuff}</ul><p>#{price}</p></html>"
end
