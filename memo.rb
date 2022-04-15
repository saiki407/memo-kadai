require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp

if memo_type == "1"
　puts "拡張子を除いたファイル名を入力して下さい"

filename = gets.chomp

　puts "メモの内容を入力してください"
　puts "終了したい場合はcontrol+Dを入力"
　
inputs = $stdin.read.split("\n")

CSV.open("#{filename}.csv", "w") do |csv|
　csv << inputs
end

elsif memo_type == "2"
　puts "編集するファイル名(拡張子を除く)を入力して下さい"
 
edit_filename = gets.chomp

data_lists = CSV.read("#{edit_filename}.csv")

　puts "編集するファイルの内容です。"
　p data_lists
      
　puts "追記するメモ内容を入力して下さい"
　puts "改行はエンターキー、終了する場合はcontrol + Dを入力して下さい"
      
add_inputs = $stdin.read.split("\n")

CSV.open("#{edit_filename}.csv", "a") do |csv|
    csv << add_inputs
end
      
puts "ファイルの内容が以下のように変更されました"

added_data_list = CSV.read("#{edit_filename}.csv")
p added_data_list
end
