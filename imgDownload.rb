require "down"


# For each image path , download file to given destination folder. 
# Assuming folder with name "DownloadHere" already present
# Invalid URL check - If file does not exist , print error message 
def imgDownload()
    filename = checkTxtFile();
    imagepaths =  imageslistToArray(filename) unless filename.nil?
    checkFolder() unless imagepaths.empty?
imagepaths.each { |imagepath| 
    begin
        downloadedfile = Down.download("#{imagepath}",destination: "./DownloadedImagesHere")
        p "File downloaded successfully."
    rescue Down::Error => error
        p "Error : File with path #{imagepath} not found."
    end
}
end 

# Checks if imageslist.txt file present in current folder.
# If file exists, read file and return.
# If file does not exist , print message "No such file or directory" ans return nil.
def checkTxtFile
    # Give your text file path here. 
    txtfilename = "./imageslist.txt"
    begin
        imageslist = File.open(txtfilename)
    rescue Errno::ENOENT => e  
        p "No such file or directory"
    end
    return imageslist
end

# Splits space seperated image paths.
# Returns array
def imageslistToArray(filename)
    filecontent = filename.read
    if filecontent.empty?
        p "No image source is given in text file.Please provide image source." 
        return []
    else
        return filecontent.split(' ')
    end
end

# Checks if folder "DownloadedImagesHere" exist.
# If folder does not exists, creates it.
def checkFolder
    Dir.mkdir("./DownloadedImagesHere") unless File.exists?("./DownloadedImagesHere")  
end

imgDownload()