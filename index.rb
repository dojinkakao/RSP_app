class Game

def main
    while !rspGame
    end
end

def rspGame
    border = "-----------------"
    puts "じゃんけん..."
    puts "[0]グー [1]チョキ [2]パー [3]戦わない"
    puts border
    rsp_method = ["グー", "チョキ", "パー"]

    user_hand = gets.to_i
    enemy_hand = rand(rsp_method.size)

    if user_hand >= 3
        puts "おもんな！"
    return false
    end

    puts "ポン！"
    puts border
    puts "あなた：#{rsp_method[user_hand]}"
    puts "相手 :#{rsp_method[enemy_hand]}"

    if user_hand == enemy_hand
        puts "あいこだ！もう一回！"
        puts border
        return false
    elsif (user_hand == 0 && enemy_hand == 1) || (user_hand == 1 && enemy_hand == 2) || (user_hand == 2 && user_hand == 0)
        puts "あなたの勝ち！"
        puts border
    return hoiGame(true)
    else
        puts border
    end
    return hoiGame(false)
end

def hoiGame(choice)
    border = "-----------------"
    puts "あっちむいて..."
    puts "[0]上↑ [1]右→ [2]下↓ [3]左←"
    puts border

    hoi_method = ["上", "右", "下", "左"]

    user_hand = gets.to_i
    enemy_hand = rand(hoi_method.size)

    if user_hand >= 4
    puts "1~3の数値で入力してください"
    return hoiGame(false)
    end

    puts "ホイ！"
    puts border

    if choice == true
        puts "あなたの手: #{hoi_method[user_hand]}"
        puts "相手の顔: #{hoi_method[enemy_hand]}"
    elsif choice == false
        puts "あなたの顔: #{hoi_method[user_hand]}"
        puts "相手の手: #{hoi_method[enemy_hand]}"
    end

    if user_hand == enemy_hand
    return gameResult(false)
    elsif user_hand != enemy_hand
    return false
    end
end

def gameResult(result)
    border = "-----------------"

    if result == false
        puts border
        puts "【結果】勝ち"
        puts "やったね！おめでとう！"
    end
    return true
end
end

game = Game.new
game.main
