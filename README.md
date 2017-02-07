# Try-Apps
first do this to initialize git (version control).

git init
then do this to add all your files to be "monitored." If you have files that you want ignored, you need to add a .gitignore but for the sake of simplicity, just use this example to learn.

>> git add . 
Then you commit and add a note in between the "" like "first commit" etc.

>> git commit -m "Initial Commit"
Now, here is where you add your existing repo

>> git remote add github <project url>
But do not literally type <project url>, but your own project URL. How do you get that? Go to the link where your repo is on github, then copy the link. In my case, one of my repos is https://github.com/JGallardo/urbanhistorical so my resulting url for this command would just add .git after that. So here it would be

>> git remote add github https://github.com/JGallardo/urbanhistorical.git
Test to see that it worked by doing

>> git remote -v
You should see what your repo is linked to.

enter image description here

Then you can push your changes to github

>> git push github master
or

>> git push origin master
If you get an error, try

>> git push -f origin master
