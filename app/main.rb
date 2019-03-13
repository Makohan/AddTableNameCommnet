require_relative './table.rb'

output_file_path = ARGV[0] + '.temp'

# ファイルパスを引数で受け取る
all_text = ''
File.open(ARGV[0]) do |file|
  all_text = file.read
end

# クラス名を読み取る
tables = all_text.scan(/(^[A-Z][\w]+):/).map do |class_name|
  Table.new(class_name[0])
end

# コメントを付与する
tables.each do |t|
  all_text.gsub!(/\n#{t.class_name}:/, "\t#{t.table_name}\n#{t.class_name}:")
end

# 出力
File.open(output_file_path, 'w') do |file|
  file.puts all_text
end
