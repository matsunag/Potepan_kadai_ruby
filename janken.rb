p 'じゃんけん...'

class Janken_acchimuite
  
 def janken
  @janken_result = "" 
  
  puts "[0]グー [1]チョキ [2]パー [3]戦わない"  

  player_hand = gets.to_i
  program_hand = rand(3)

  jankens = ["グー", "チョキ", "パー"]
  puts "あなた:#{jankens[player_hand]}, 相手:#{jankens[program_hand]}"

  #あいこ
  if player_hand == program_hand
   @janken_result = "janken_result_draw"
   puts "あいこで"
   janken
   return true

  #勝ち
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
   @janken_result = "janken_result_win"
   puts "あなたの勝ちです"
   next_game
   return false
  

  #負け
  elsif(player_hand == 0 && program_hand == 2)||(player_hand == 1 && program_hand == 0)||(player_hand ==2 && program_hand == 1)
   @janken_result = "janken_result_lose"
   puts "あなたの負けです"
   next_game
   return false
  
  else
    puts "終了"
  
  end
  
 end
 

 def next_game
   p 'あっちむいて'
   puts "[0]上 [1]下 [2]右 [3]左"
  
   player_choice = gets.to_i
   program_choice = rand(4)
  
   acchimuitehoi = ["上", "下", "右","左"]
   
   case @janken_result
    when "janken_result_win"
    puts "あなた:#{acchimuitehoi[player_choice]}, 相手:#{acchimuitehoi[program_choice]}"
  
    #勝ち
    if player_choice == program_choice
      puts "あなたの勝ちです"
    
    #続行
    else
     puts "もう一回"
     janken
     continue_game = true
     while continue_game
       continue_game = Janken
     end
  
    end
   end
   
   case @janken_result
    when "janken_result_lose"
    puts "あなた:#{acchimuitehoi[player_choice]}, 相手:#{acchimuitehoi[program_choice]}"
  
    #負け
    if player_choice == program_choice
      puts "あなたの負けです"
    
    #続行
    else
     puts "もう一回"
     janken
     continue_game = true
     while continue_game
       continue_game = Janken
     end
       
    end
   end
    
 end
 
end

janken_acchimuite = Janken_acchimuite.new()

janken_acchimuite.janken()
janken_acchimuite.next_game()

  continue_game = true

while continue_game
  continue_game = janken
end 