# README 
## Rake task to download images from plain text file

This README is a  document whatever steps are necessary to get 
the task up and running.

##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [ruby 2.7.2]

##### 1. Check out the repository

- Create forlder DownloadImagesFromTxt
```
cd DownloadImagesFromTxt
git clone https://github.com/amrutapednekar/DownloadImagesFromTxt.git
gem install rake
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
