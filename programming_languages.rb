require "pry"

def reformat_languages(languages)
  # your code here
  formatted_languages = {}

  languages.each do |style_key, language_data|

    language_keys_arr = language_data.keys
    language_keys_arr.each do |key|
      if(!formatted_languages.key?(key))
        formatted_languages[key] = {}
        formatted_languages[key][:type] =  language_data[key][:type]
        formatted_languages[key][:style] =  [] << style_key
      else
        formatted_languages[key][:type] =  language_data[key][:type]
        formatted_languages[key][:style] << style_key
      end
    end
  end


  return formatted_languages
end
