
def get_first_name_of_season_winner(data, season)
 answer = nil 
 data.each do |seasons, array_contestants|
   if seasons == season
     array_contestants.each do |each_cont_details|
       if each_cont_details["status"] == "Winner"
         answer = each_cont_details["name"]
        
       end
     end
    end
  end
    first_name_only = answer.split(" ")
    first_name_only[0]
end

def get_contestant_name(data, occupation)
  answer = nil 
 data.each do |seasons, array_contestants|
     array_contestants.each do |each_cont_details|
       if each_cont_details["occupation"] == occupation
         answer = each_cont_details["name"]
        
       end
     end
    
  end
    answer
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
data.each do |season, array_contestants|
  array_contestants.each do |each_cont_details|
    if each_cont_details["hometown"] == hometown
      counter += 1
      
    end
  end
end
counter
end

def get_occupation(data, hometown)
  ans_array = []
  data.each do |season, array_contestants|
    array_contestants.each do |each_cont_details|
      if each_cont_details["hometown"] == hometown
        ans_array.push(each_cont_details["occupation"])
      end
    end
  end
  ans_array[0]
end

def get_average_age_for_season(data, season)
  counter = 0
  ans_array = []
  data.each do |seasons, array_contestants|
    if seasons == season
      array_contestants.each do |each_cont_details|
        ans_array.push(each_cont_details["age"].to_f)
      end
    end
  end
  ans_array.each do |ele|
    counter += ele
end
y = counter/ans_array.length 
y.round
end
