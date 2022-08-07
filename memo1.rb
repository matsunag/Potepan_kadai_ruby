require "csv"
puts "1(新規でメモを作成) 2(既存のメモを編集する)"
memo_type = gets.chomp.to_s

if memo_type =="1"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  p 'メモしたい内容を記入してください'
  p '完了したらCtrl + Dをおします'
  
  memo = STDIN.read
  
  CSV.open("#{file_name}.csv",'w') do |csv|
    csv << ["#{memo}"]
  end
  
elsif memo_type == "2"
  puts "編集したいファイル名を入力してください"
  file_name = gets.chomp
  puts "編集内容を記入してください"
  puts "完了後、Ctrl + Dをおします"

  memo = STDIN.read
  
  CSV.open("#{file_name}.csv","a") do |csv|
    csv << ["#{memo}"]
  end
  
else
  puts "エラー"
end