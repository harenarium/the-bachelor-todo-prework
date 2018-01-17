require "pry"
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
  counter = 0
  data.each{|season,a|
    a.each {|hash_in_a|
      if hash_in_a["hometown"]==hometown
        counter +=1
      end
    }
  }
  counter
end

def get_occupation(data, hometown)
  data.each{|season,a|
    a.each {|hash_in_a|
      if hash_in_a["hometown"]==hometown
        return hash_in_a["occupation"]
      end
    }
  }
end

def get_average_age_for_season(data, season)

  age_sum = 0
  counter = 0
  data.each{|season,a|
    a.each {|hash_in_a|
      age_sum += hash_in_a["age"].to_f
      counter += 1
    }
  }
  binding.pry
  (age_sum/counter).round
end
