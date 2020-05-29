require "yaml"
require 'pry'


def load_library(emogies_library)
  emogies_library = YAML.load_file('./lib/emoticons.yml')
   emogies_library
end

def get_english_meaning(emogies_library, emogi)
  
  answer = ""

 library = load_library(emogies_library) 
  
    library.each{|emoginame, innerhash|
      
        if innerhash.value?(emogi)
       answer =  emoginame
        end
        
    }
         
  answer

  
  
 
end

def get_japanese_emoticon(emogies_library,emogi)

 library = load_library(emogies_library)
          
end