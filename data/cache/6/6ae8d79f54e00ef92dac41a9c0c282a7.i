a:18:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:45:"FIND & REPLACE ACROSS MULTIPLE FILES IN LINUX";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"A solution to do a find & replace across multiple files which was purely command line based.";}i:2;i:62;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:155;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:56:"find . -name "*.php" -print | xargs sed -i 's/foo/bar/g'";}i:2;i:155;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:155;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:91:"It looks a bit complicated but its quite simple. There are three components to the command:";}i:2;i:216;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:308;}i:10;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:201:"find . -name "*.php" -print – Find all files (recursively) which has “.php” in the file and print them out. This will give you output like this:
./file.php
./includes/test.php
./classes/class.php";}i:2;i:308;}i:11;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:284:"xargs- This command is used when you want to pass a lot of arguments to one command. xargs will combine the single line output of find and run commands   with multiple
arguments, multiple times if necessary to avoid the max chars per line limit. In this case we combine xargs with sed";}i:2;i:519;}i:12;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:296:"sed -i 's/foo/bar/g' – aka Stream Editor is a tool which should be in every sys admin’s toolkit.  In this case every occurence of “foor” is replaced by   “bar” in all the files found using the “find” command. Sed simply parses input and applies certain text transformations to it.";}i:2;i:809;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:809;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:200:"This pretty much covers the core of the find & replace command. You could also open up a particular folder in an IDE and use it’s find and replace feature. But find + sed is quite fast and powerful.";}i:2;i:1110;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1310;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1311;}i:17;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1311;}}