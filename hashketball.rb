require "pry"

def game_hash
  {
    home: {team_name: "Brooklyn Nets",
           colors: ["Black", "White"],
           players: {"Alan Anderson" => { number: 0,
                             shoe: 16, 
                             points: 22, 
                             rebounds: 12, 
                             assists: 12, 
                             steals: 3, 
                             blocks: 1,
                             slam_dunks: 1},
                     "Reggie Evans" => { number: 30,
                             shoe: 14, 
                             points: 12, 
                             rebounds: 12, 
                             assists: 12, 
                             steals: 12, 
                             blocks: 12,
                             slam_dunks: 7},       
                     "Brook Lopez" => { number: 11,
                             shoe: 17, 
                             points: 17, 
                             rebounds: 19, 
                             assists: 10, 
                             steals: 3, 
                             blocks: 1,
                             slam_dunks: 15},
                     "Mason Plumlee" => { number: 1,
                             shoe: 19, 
                             points: 26, 
                             rebounds: 12, 
                             assists: 6, 
                             steals: 3, 
                             blocks: 8,
                             slam_dunks: 5},
                     "Jason Terry" => { number: 31,
                             shoe: 15, 
                             points: 19, 
                             rebounds: 2, 
                             assists: 2, 
                             steals: 4, 
                             blocks: 11,
                             slam_dunks: 1}
                    }
          },
    away: {team_name: "Charlotte Hornets",
           colors: ["Turquoise", "Purple"],
           players: {"Jeff Adrien" => { number: 4,
                             shoe: 18, 
                             points: 10, 
                             rebounds: 1, 
                             assists: 1, 
                             steals: 2, 
                             blocks: 7,
                             slam_dunks: 2},
                     "Bismak Biyombo" => { number: 0,
                             shoe: 16, 
                             points: 12, 
                             rebounds: 4, 
                             assists: 7, 
                             steals: 7, 
                             blocks: 15,
                             slam_dunks: 10},       
                     "DeSagna Diop" => { number: 2,
                             shoe: 14, 
                             points: 24, 
                             rebounds: 12, 
                             assists: 12, 
                             steals: 4, 
                             blocks: 5,
                             slam_dunks: 5},
                     "Ben Gordon" => { number: 8,
                             shoe: 15, 
                             points: 33, 
                             rebounds: 3, 
                             assists: 2, 
                             steals: 1, 
                             blocks: 1,
                             slam_dunks: 0},
                     "Brendan Haywood" => { number: 33,
                             shoe: 15, 
                             points: 6, 
                             rebounds: 12, 
                             assists: 12, 
                             steals: 22, 
                             blocks: 5,
                             slam_dunks: 12}
                    }
          }
  }
end 


def num_points_scored(player_name)
  num_points = 0 
  game_hash.each do |location, team_data|
        team_data[:players].each do |data_item, player_performance_hash|
          if data_item == player_name
            num_points = player_performance_hash[:points]
          end
        end
  end
  num_points 
end


def shoe_size(player_name)
  shoe_size = nil  
  game_hash.each do |location, team_data|
      team_data[:players].each do |data_item, player_performance_hash|
          if data_item == player_name
            shoe_size = player_performance_hash[:shoe]
          end
        end
  end
  shoe_size
end 

def team_colors(name_of_team)
  colors_of_team = nil 
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data == name_of_team 
         colors_of_team = team_data[:colors]
      end 
    end
  end
  colors_of_team
end 

def team_names
  array_of_team_names = []
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :team_name
        array_of_team_names << data 
      end 
    end
  end 
  array_of_team_names
end 


def player_numbers(name_of_team)
  array_of_team_jersey_numbers = []
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data == name_of_team  
        team_data[:players].each do |data_item, player_performance_hash|
          player_performance_hash.each do |stat, integer|
            if stat == :number 
            array_of_team_jersey_numbers << integer
            end 
          end 
        end 
      end 
    end 
  end
  array_of_team_jersey_numbers
end


def player_stats(player_name)
  stats_of_player = nil   
  game_hash.each do |location, team_data|
    team_data[:players].each do |data_item, player_performance_hash|
        if data_item == player_name 
        stats_of_player = player_performance_hash
        end 
    end
  end 
  stats_of_player
end


def big_shoe_rebounds
  biggest_shoe_rebounds = nil 
  biggest_shoe = 0 
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players 
        data.each do |name_of_player, player_performance_hash|
          if player_performance_hash[:shoe] > biggest_shoe
             biggest_shoe = player_performance_hash[:shoe]
             biggest_shoe_rebounds =  player_performance_hash[:rebounds]
          end
        end
      end
    end
  end 
biggest_shoe_rebounds 
end 















