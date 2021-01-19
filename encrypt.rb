require 'aes'

source_file = ARGV[0]
passoword = ARGV[1]
encrypted = AES.encrypt(File.read(source_file), password)

target_file = "#{source_file}.enc"
File.open(target_file, "wb") {|f| f.write(encrypted)}

