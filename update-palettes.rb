require 'json'

# monkey patch
class String  ;
  def titleize
    self.split(/ |\_/).map(&:capitalize).join(" ")
  end

  def clean
    self.gsub(/[-_]/, " ")
  end
    
  def to_name
    self.clean.titleize
  end
end

puts "=============================================================="
puts "This scrips it's to use a custom gpl list of palettes on aseprite. "
puts    "Based on the .gpl palettes on the same folder, it creates or updates a "
puts   "package.json file with all the files on the same folder."
puts "==============================================================\n\n"


files = Dir["./*.gpl"]

question = "Found #{files.length} files with .gpl extension"
printf "\e[31m#{question}. Press 'y' to continue: \e[0m"
prompt = STDIN.gets.chomp
return unless prompt == 'y'

dirname = File.basename(Dir.getwd)
author = "Cat Cup Borrowed"
publisher = "nobody"

palettes = files.map do |file|
  {
    id: File.basename(file, ".gpl").to_name,
    path: file
  }
end

full_data = {
  "name": dirname,
  "displayName": dirname.to_name,
  "version": "1.0",
  "author": { "name": author, "url": "" },
  "publisher": publisher,
  "categories": [
    "Palettes"
  ],
  "contributes": {
    "palettes": palettes
  }
}


File.open("./package.json","w") do |f|
  f.write(JSON.pretty_generate(full_data))
end

puts "package.json file created or updated!"