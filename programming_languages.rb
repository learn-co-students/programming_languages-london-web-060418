def reformat_languages(languages)
  new_hash = {}
  
  languages.each { |style , language_hash |
    print "Style #{style} \n"
    print "language #{language_hash} \n"
    new_hash = {}
    this_hash[:type] = ""
    this_hash[:style] = []
    this_hash[:style].push(style)
    language_hash.each { |language, type_hash|
      if new_hash.key?(language) == false
        new_hash[langugage] => type_hash
        type_hash[:style] => style
      
      print "new_hashlanguage #{new_hash[language]} \n"
    }
    
  }
  print "new_hash #{new_hash} \n"
  new_hash
end
