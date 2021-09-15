require 'roo'
require 'redcarpet'

xlsx = Roo::Spreadsheet.open('./data.xlsx')

sheet = xlsx.sheet(0)

# Initializes a Markdown parser
markdown = Redcarpet::Markdown.new(renderer, extensions = {})
markdown.render('This is *bongos*, indeed.')
# => "<p>This is <em>bongos</em>, indeed.</p>"
