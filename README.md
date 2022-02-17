# README 
## Rake task to download images from plain text file

This README is a  document whatever steps are necessary to get 
the task up and running.

##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [ruby 2.7.2]

##### 1. Check out the repository

- Clone a Git repository
```
git clone https://github.com/amrutapednekar/DownloadImagesFromTxt.git
cd DownloadImagesFromTxt
```
- Install required gems
```
bundle install
```

##### 2. Edit imageslist.txt file

The sample **imageslist.txt** file already present. Edit and list images path you want to donload. They are space seperated

 File location : /imageslist.txt


##### 3. Run rake commad

Run the following commands to create and setup the database.

```
rake downloadImages 
```

##### 4. Check downloaed images 

Downloaded imags are in folder named **DownloadedImagesHere**

 File location : /DownloadedImagesHere

 ```
cd DownloadedImagesHere
dir /s
```
### Documentation ###
For downloading images , there are many options in ruby. 
Why I chose ruby gem down instead of open-uri ? 

1. With open-uri
- File extension not preserved along with download.
- Downloads files from URLs that come from you
- File less that 10kb returns StringIO

2. Ruby gem down
- File extension persevered after download.
- Downloads files from URLs that come from user.
- Downloads all size images
- Saves original file name of downloaded file 
- Allows to  set max_size which controls file size.

### License ####
The code is available as open source under the terms of the MIT License.
