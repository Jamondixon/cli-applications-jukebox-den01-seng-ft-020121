require 'pry'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
 puts "Please enter a song name or number:"
 statement = "Invalid input, please try again"
 input = gets.chomp
 if input.to_i != 0 && input.to_i < songs.length
   statement = "Playing #{songs[input.to_i - 1]}"
 else
   songs.each do |song|
     if input == song
       statement = "Playing #{song}"
     end
   end
 end
 #binding.pry
 puts statement
 return statement
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  until user_input == "exit"
    if user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    elsif user_input == "help"
      help
    end
    puts "Please enter a command:"
    user_input = gets.chomp
  end
  if user_input == "exit"
        exit_jukebox
        break
  end
end
