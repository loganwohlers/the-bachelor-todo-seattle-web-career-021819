def get_first_name_of_season_winner(data, season)
  data.each do |k,v|
    if (k==season)
      v.each do |h|
        h.each do |k2, v2|
          puts k2
          puts v2
          if (v2=="Winner")
            return data[k][h]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
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
