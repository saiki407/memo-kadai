require "csv"
CSV.open('test.csv','w') do |test|
    
def make_memo
    puts "メモのタイトルを入力してください"
    title = gets.chomp
    puts "メモの本文を入力してください"
    content = gets.chomp
    memo = {"タイトル" => title,"本文"=>content}
end

def show_memo(memos)
    memos.each do |memo|
        puts memo["タイトル"] + ":" + memo["本文"]
 end
end

memos = []

while true
    puts "【add】新規でメモを作成"
    puts "【show】既存のメモを表示する"
    print "どれか選んでね→"
    mode = gets.chomp.to_s
    
  if mode == "add"
     puts "新規でメモを作成"
     memos.push(make_memo)
  
  elsif mode == "show"
      puts "メモを表示します"
      show_memo(memos)
      
  else
      puts "エラー"
      
  end
end
end

require "csv"
CSV.read("test.csv") do  |row|
 p row
 end