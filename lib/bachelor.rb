def get_first_name_of_season_winner(data, season)
  data.each do |k,v|
    if (k==season)
      n=0
      v.each do |h|
        h.each do |k2, v2|
          if v2=="Winner"
            return data[k][n]["name"].split(" ")[0]
          end
        end
        n+=1
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |k,v|
      n=0
      v.each do |h|
        h.each do |k2, v2|
          if v2==occupation
            return data[k][n]["name"]
          end
        end
        n+=1
      end
    end
end

def count_contestants_by_hometown(data, hometown)
  n=0
  data.each do |k,v|
      v.each do |h|
        h.each do |k2, v2|
          if v2==hometown
            n+=1
          end
        end
      end
    end
  n
end

def get_occupation(data, hometown)
  data.each do |k,v|
    n=0
      v.each do |h|
        h.each do |k2, v2|
          if v2==hometown
            return data[k][n]["occupation"]
          end
        end
        n+=1
      end
    end
end

def get_average_age_for_season(data, season)
  a=[]
  data.each do |k,v|
    if (k==season)
      n=0
      v.each do |h|
        a.push(data[k][n]["age"])
        n+=1
      end
    end
  end
  avg=0
  a.each {|num| avg+=num}
  return avg/a.length
end
