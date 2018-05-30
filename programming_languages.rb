def reformat_languages(languages_hash)
  
  new_hash = Hash.new 
  
  languages_hash.each do |style, languages|
    languages.each do |language, type|
      type.each do |type, value|
        if language == :javascript 
          new_hash[language] = {
            :type => value,
            :style => [:oo, :functional]
          }
        else
          new_hash[language] = {
            :type => value,
            :style => [style]
          }
        end
      end
    end
  end
  return new_hash
end
