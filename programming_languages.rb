require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |topkey, language_data|
    language_data.each do |language, data|
      if !new_hash[language]
        new_hash[language] = {:type => data[:type], :style => [topkey]}
      else
        new_hash[language][:style] << topkey
      end
    end
  end

    new_hash
end



# example:
# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
# #
#
# to this:
# {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :javascript => {
#     :type => "interpreted",
#     :style => [:oo, :functional]
#   },
