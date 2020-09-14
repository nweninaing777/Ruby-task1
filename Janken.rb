class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    puts "[0]:グー\n[1]:チョキ\n[2]:パー"
        player_hand = gets.chomp

        unless player_hand == "0" || player_hand == "1" || player_hand == "2"
          puts "数字を入力してください。"
          return hand
        else
          player_hand = player_hand.to_i
          player_messi= ["グー","チョキ","パー"]

          return[player_hand, player_messi]
        end
  end
end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    enemy_hand = rand(0..2)


    return [enemy_hand]
  end
end

class Janken
  def pon(player_return_value, enemy_return_value)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーenのうち、何を出したのかも表示させる
    #playerの数字が返る
    player_hand = player_return_value[0]
    # playerの["グー","チョキ","パー"]

    # enemy の数字が返る
    enemy_hand = enemy_return_value[0]
    # ["グー", "チョキ", "パー"]



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
# next_game = true
#
# while next_game do
#   next_game = self.pon(Player.new.hand, Enemy.new.hand)
# end
janken.pon(player.hand, enemy.hand)

# ここに書かれているRubyの記述はあくまでヒントとして用意された雛形なので、書かれている記述に従わずに実装したいという場合は、自分の好きに実装して構わない。課題要件を満たし、コードの品質が一定の水準にあると判定されればどのような実装でも合格になる。
