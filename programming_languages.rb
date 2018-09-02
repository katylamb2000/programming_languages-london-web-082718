def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, info_hash|
    type.each do |name, attributes|
      new_hash[name] ||=attributes
      new_hash[name][:style] ||= []
      new_hash[name][:style] << type
    end
  end
  new_hash
end


# def reformat_languages(languages)
#   new_languages = {}
#   languages.each do |type, hash|
#     hash.each do |name, attributes|
#       new_languages[name] ||= attributes
#       new_languages[name][:style] ||= []
#       new_languages[name][:style] << type
#     end
#   end
#   new_languages
# end