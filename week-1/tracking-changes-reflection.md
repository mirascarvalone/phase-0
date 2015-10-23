How does tracking and adding changes make developers' lives easier?
Tracking and and adding changes allows developers to keep track of their changes over time and provide peer review from one developer to another.
What is a commit?
A commit is a static view of the state of your work. Rather than separately capturing every change made to every file/folder your'e working with, a commit allows you to make a bunch of changes and then capture where you are at a specific point.
What are the best practices for commit messages?
Commit messages should be no longer than 50 characters, and start with the first word capitalized. Verbs should be in the present tense.
What does the HEAD^ argument mean?
The HEAD^ argument takes you to the most recent commit.
What are the 3 stages of a git change and how do you move a file from one stage to the other?
First, you edit a file and save your changes in the working directory. Then, you check git status to make sure it shows your file has been added or modified. If you want to keep the changes, type "git add [file]", so the changes are "staged." If you want to commit those changes, you'd next type "git commit -m [commit message]," which would save a static view of these changes for later.
Write a handy cheatsheet of the commands you need to commit your changes?
git status
git add [file]
git commit -m "[commit message]"
What is a pull request and how do you create and merge one?
A pull request is a way to get others to review your commit before merging it into the master. To create it, go to github and click on "pull request", send it to someone else, and if they approve they will click merge.
Why are pull requests preferred when working with teams?
Pull requests are great when working with teams so that you can have a record of all your changes, and when someone reviewed/approved them. They allow others to review your code before integrating it with the master.