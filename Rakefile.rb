 
# Rakefile

task default: [:downloadImages]

task :downloadImages do
    puts "Downloading images from textfile"
    ruby "imgDownload.rb"
end
