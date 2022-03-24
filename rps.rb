$p_score = 0
$c_score = 0

def number_rounds
    puts "Enter the number of rounds: "
    rounds = gets.chomp.to_i
    rounds
end

def player_play
    puts "\nChoose beetween: Rock, Paper or Scissors."
    choice = gets.chomp
    choice_upcase = choice.capitalize
    while choice_upcase != 'Rock' && choice_upcase != 'Paper' && 
            choice_upcase != 'Scissors'
        puts "\nPlease input a select option."
        puts 'Choose beetween: Rock, Paper or Scissors.'
        choice = gets.chomp
        choice_upcase = choice.capitalize
    end
    choice_upcase
end

def computer_play
    ['Rock', 'Paper', 'Scissors'].sample
end

def play_round(player_selection, computer_selection)
    case [player_selection, computer_selection]
    when ['Rock', 'Scissors'], ['Paper', 'Rock'], ['Scissors', 'Paper']
        puts "\nYou Win! #{player_selection} beats #{computer_selection}!"
        $p_score += 1
    when ['Scissors', 'Rock'], ['Rock', 'Paper'], ['Paper', 'Scissors']
        puts "\nYou Lose! #{computer_selection} beats #{player_selection}!"
        $c_score += 1
    else
        puts "Draw! #{player_selection} tie with #{computer_selection}!"
    end
    puts "You: #{$p_score} - Computer: #{$c_score}.\n\n"
end

def game(number_rounds)
    while ($p_score + $c_score) < number_rounds
        play_round(player_play, computer_play)
    end
    
    if $p_score > $c_score
        puts "You Win the game! Final Score -> You: #{$p_score} - Computer #{$c_score}."
    else
        puts "You Win the game! Final Score -> You: #{$p_score} - Computer #{$c_score}."
    end
end

game(number_rounds)
