def get_first_name_of_season_winner(data, season)
  name = ""
  data[season].each {|hash_in_a|
    if hash_in_a["status"]=="Winner"
      name = hash_in_a["name"]
    end
  }
  name.split(" ")[0]
end

def get_contestant_name(data, occupation)
  name = ""
  data.each{|season,a|
    a.each {|hash_in_a|
      if hash_in_a["occupation"]==occupation
        name = hash_in_a["name"]
      end
    }
  }
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
