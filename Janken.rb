# プレイヤー(自分)に「0 ~ 2」を入力させるロジックを書きます。
class Player
    def hand
      # 「プレイヤーに 0 ~ 2を入力させる文章」を表示させます。
       puts "数字を入力してください。"
    puts "[0]:グー\n[1]:チョキ\n[2]:パー"
    # 変数「input_hand」にプレイヤーが入力したものを取得して代入します。
     # ヒント! 「getsメソッド」を使用します。
     input_hand = gets.chomp
     input_hand = input_hand.to_i
       while true
      if input_hand == 0 || 1 || 2
         # ヒント！ 「return」を使用します。
           return  input_hand
         else
           puts "もう一度数字を入力してください"
          puts "0:グー, 1:チョキ, 2:パー"
           end
       end
    end
  end

  class Enemy
    def hand
      enemy_hand = rand(3)
    end
  end

  class Janken
    def pon (player_hand, enemy_hand)
      janken = ["グー", "チョキ", "パー"]
      if (player_hand - enemy_hand +3) % 3 == 0
        puts "相手の手は#{janken[enemy_hand]}です。あいこです"
        return true
      elsif (player_hand - enemy_hand +3) % 3 == 2
        puts "相手の手は#{janken[enemy_hand]}です。あなたの勝ちです"
        return false
      elsif (player_hand - enemy_hand +3) % 3 == 1

        puts "相手の手は#{janken[enemy_hand]}です。あなたの負けです"
        return false
      else
        puts "0~2の数字を入力してください"
        return true
      end
    end
  end


  player = Player.new
  enemy = Enemy.new
  janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
   janken.pon(player.hand, enemy.hand)
 # ここに書かれているRubyの記述はあくまでヒントとして用意された雛形なので、書かれている記述に従わずに実装したいという場合は、自分の好きに実装して構わない。課題要件を満たし、コードの品質が一定の水準にあると判定されればどのような実装でも合格になる。
