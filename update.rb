
puts "=============================================================="
puts "This scrips it's to use a custom gpl list of palettes on aseprite." \
     "Based on the .gpl palettes on the same folder, it creates a package.json file " \
     "with all the files on the same folder."
puts "==============================================================\n\n"


files = Dir["./*.gpl"]

question = "Found #{files.length} files with .gpl extension"
# printf "\e[31m#{question}. Press 'y' to continue: \e[0m"
# prompt = STDIN.gets.chomp
# return unless prompt == 'y'

dirname = File.basename(Dir.getwd)

