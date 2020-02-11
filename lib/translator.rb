require 'yaml'
require 'pry'

<<<<<<< HEAD

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


=======
def load_library(emoticon_file)
  emoticons = YAML.load_file('./lib/emoticons.yml')

  emoticon_library = {'get_meaning'  => {}, 'get_emoticon' => {} }

  emoticons.each do |meaning, value|
    english = value[0]
    japanese = value[1]
    emoticon_lib['get_meaning'][japanese] = meaning
    emoticon_lib['get_emoticon'][english] = japanese
    
  end
  
  emoticon_library
  
end


def get_japanese_emoticon(emoticon_file, emoticon)
  emoticons = load_library(file_path)
  emoji = emoticons.values.find {|faces| faces[0] == emoticon}
  emoji == nil ? "Sorry, that emoticon was not found" : emoji[1]
end

def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library(file_path)
  emoji = emoticons.values.find {|faces| faces[0] == emoticon}
  emoji == nil ? "Sorry, that emoticon was not found" : emoji[1]
end

def get_english_meaning(file_path, emoticon)
  emoticons = load_library(file_path)
  emoji = emoticons.find {|name, faces| faces[1] == emoticon }
  emoji == nil ? "Sorry, that emoticon was not found" : emoji[0]
end
>>>>>>> 30051359b3f94532ac95199702c20c537a3978d7
