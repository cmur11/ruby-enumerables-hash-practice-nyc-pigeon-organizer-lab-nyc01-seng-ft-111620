require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  final_results = data.each_with_object({}) do |(key, value), final_array|
    #binding.pry
    #enumerates over the whole hash and seperates the main key fromt he inner hash pair. It also creates an array called final_array    
    value.each do |inner_key, names|
      #seperates the inner key and the name array
        names.each do |name|
         # analyzes each element in the array of the inner value
          binding.pry
            if !final_array[name]
            #if the name (e.g Theo) is not there...  
              final_array[name] = {}
              #I'm creating this: {theo => {}}
              #create the name Theo inside of the hash
            end
              if !final_array[name][key] 
                #if {Theo => {color =>[]}
                
                  final_array[name][key] = []
                  #we are setting {Theo => {color=> to equal [an empty array]}
                  #final_array[name][key].push(inner_key_to_s)
              end
              final_array[name][key].push(inner_key.to_s)
        end
    end
  end        
  #binding.pry
end
