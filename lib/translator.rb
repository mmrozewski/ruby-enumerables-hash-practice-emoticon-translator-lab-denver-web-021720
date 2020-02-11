require 'yaml'
require 'pry'


def load_library(filepath)
  emoticons = YAML.load_file(filepath)
  emote_lib = {}

  
  emote_lib["get_emoticon"] = {}
  emote_lib["get_meaning"] = {}

  emoticons.each do |english_word, emoticon_set|
    
    emote_lib["get_emoticon"][emoticon_set.first] = emoticon_set.last
    
    emote_lib["get_meaning"][emoticon_set.last] = english_word
  end
  emote_lib
end

def get_japanese_emoticon(filepath, emoticon)
  
  emote_lib = load_library(filepath)
  result = emote_lib["get_emoticon"][emoticon]
  
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end

def get_english_meaning(filepath, emoticon)
  
  emote_lib = load_library(filepath)
  
  result = emote_lib["get_meaning"][emoticon]
  
  if !result
    result = "Sorry, that emoticon was not found" 
  end
  result
end


