a:86:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:39:"A complete guide to git-svn conversions";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:325:"Our goal is to do a complete conversion of our Subversion repository and end up with a bare Git repository acceptable for sharing with others (privately or publicly). Bare repositories are ones without a local working checkout of the files available for modifications. They are the recommended format for shared repositories.";}i:2;i:57;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:382;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:382;}i:7;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:384;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"1. Retrieve a list of all Subversion committers";}i:2;i:386;}i:9;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:433;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:435;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:435;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:485:"Subversion simply lists the username for each commit. Git’s commits have much richer data, but at its simplest, the commit author needs to have a name and email listed. By default the git-svn tool will just list the SVN username in both the author and email fields. But with a little bit of work, you can create a list of all SVN users and what their corresponding Git name and emails are. This list can be used by git-svn to transform plain svn usernames into proper Git committers.";}i:2;i:437;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:922;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:922;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"From the root of your local Subversion checkout, run this command:";}i:2;i:924;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:990;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:129:"svn log -q | awk -F '|' '/^r/ {sub("^ ", "", $2); sub(" $", "", $2); print $2" = "$2" <"$2">"}' | sort -u > authors-transform.txt";i:1;N;i:2;N;}i:2;i:997;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:997;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:225:"That will grab all the log messages, pluck out the usernames, eliminate any duplicate usernames, sort the usernames and place them into a “authors-transform.txt” file. Now edit each line in the file. For example, convert:";}i:2;i:1136;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1367;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:98:"
jwilkins = jwilkins <jwilkins>
into this:

jwilkins = John Albin Wilkins <johnalbin@example.com>
";i:1;N;i:2;N;}i:2;i:1367;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1367;}i:23;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1475;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"2. Clone the Subversion repository using git-svn";}i:2;i:1477;}i:25;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1525;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1527;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1528;}i:28;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:87:"git svn clone [SVN repo URL] --no-metadata -A authors-transform.txt --stdlayout ~/temp
";}i:2;i:1528;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1528;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:107:"This will do the standard git-svn transformation (using the authors-transform.txt file you created in step ";}i:2;i:1621;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1728;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1728;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:"1) and place the git repository in the “~/temp” folder inside your home directory.";}i:2;i:1730;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1816;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1816;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:"3. Convert svn:ignore properties to .gitignore";}i:2;i:1818;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1864;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1864;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:105:"If your svn repo was using svn:ignore properties, you can easily convert this to a .gitignore file using:";}i:2;i:1866;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1972;}i:41;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:122:"cd ~/temp
git svn show-ignore > .gitignore
git add .gitignore
git commit -m 'Convert svn:ignore properties to .gitignore.'";}i:2;i:1972;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1972;}i:43;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2105;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"4. Push repository to a bare git repository";}i:2;i:2107;}i:45;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2150;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2152;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2152;}i:48;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2154;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:98:"First, create a bare repository and make its default branch match svn’s “trunk” branch name.";}i:2;i:2156;}i:50;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2254;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:2256;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2257;}i:53;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:88:"git init --bare ~/new-bare.git
cd ~/new-bare.git
git symbolic-ref HEAD refs/heads/trunk
";}i:2;i:2257;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2257;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"Then push the temp repository to the new bare repository.";}i:2;i:2355;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2413;}i:57;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:117:"cd ~/temp
git remote add bare ~/new-bare.git
git config remote.bare.push 'refs/remotes/*:refs/heads/*'
git push bare
";}i:2;i:2413;}i:58;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2413;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"You can now safely delete the ~/temp repository.";}i:2;i:2542;}i:60;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2590;}i:61;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2590;}i:62;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2592;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"5. Rename “trunk” branch to “master”";}i:2;i:2594;}i:64;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2638;}i:65;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2640;}i:66;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2640;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:173:"Your main development branch will be named “trunk” which matches the name it was in Subversion. You’ll want to rename it to Git’s standard “master” branch using:";}i:2;i:2642;}i:68;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2816;}i:69;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:45:"cd ~/new-bare.git
git branch -m trunk master
";}i:2;i:2816;}i:70;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2816;}i:71;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2869;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"6. Clean up branches and tags";}i:2;i:2871;}i:73;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2900;}i:74;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2902;}i:75;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2902;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:170:"git-svn makes all of Subversions tags into very-short branches in Git of the form “tags/name”. You’ll want to convert all those branches into actual Git tags using:";}i:2;i:2904;}i:77;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3080;}i:78;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:196:"
  cd ~/new-bare.git
  git for-each-ref --format='%(refname)' refs/heads/tags |
  cut -d / -f 4 |
  while read ref
  do
  git tag "$ref" "refs/heads/tags/$ref";
  git branch -D "tags/$ref";
 done
";i:1;N;i:2;N;}i:2;i:3080;}i:79;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3080;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"This step will take a bit of typing. ";}i:2;i:3285;}i:81;a:3:{i:0;s:6:"smiley";i:1;a:1:{i:0;s:3:":-)";}i:2;i:3322;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:132:" But, don’t worry; your unix shell will provide a > secondary prompt for the extra-long command that starts with git for-each-ref.";}i:2;i:3325;}i:83;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3457;}i:84;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3457;}i:85;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3457;}}