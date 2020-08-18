require 'yaml'
require 'pry'
# require modules here

def load_library(file_path)
  new_array = {:meaning=> {}, :emoji=> {}}
 emoji_library= YAML.load_file(file_path)
 emoji_library.map do |key, values|
   new_array[:meaning][values[1]]= key
   #binding.pry
   new_array[:emoji][values[0]]= values[1]
   #binding.pry
 end
 new_array
end

def get_japanese_emoticon(file_path, emoticon)
  new_array= load_library(file_path)
  translated = nil
  new_array[:emoji].each do |english_emoji, japanese_emoji|
    if emoticon == english_emoji
      translated = japanese_emoji
    end
  end
  if translated == nil
    return "Sorry, that emoticon was not found"
  else
    return translated
end
end

def get_english_meaning
  # code goes here
end