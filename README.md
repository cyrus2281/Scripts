
# Bash Scripts for automation and customization

### LineCounter

This bash script will go recursively through all the files and will count all the lines and return the total number of lines
If not path is provided or the provideded path doesn't exists, it will recursively count from current directory.
#### Example
```sh
$ bash ../Scripts/CountLines.sh ./src
There are a total of 3050 lines
```

---

### AccountStats

This Bash will count all the lines add, removed, and total number of line for the given git user name for the current git repository
#### Example
```sh
$ bash ../Scripts/AccountStats.sh "Cyrus Mobini"
added lines: 212 removed lines: 131 total lines: 343
```
---

### Git Aliases
A bunch of bash aliases that shortens the most commonly used git commands.

---

### Git Branch Alias
This bash script adds additional functionality to how you use Git. If you frequently work with long branch names that include issue numbers, this tool can be very helpful. With this tool, you'll be able to assign alias names for each branch you create, and switch or delete them based on the alias, instead of the long and confusing name.

You can also add notes to each branch to fully remember what they were about, and list all branch names.

Additionally, the code provides a custom prompt that displays the name of the current repository, branch name, and its alias.

#### Functionalities:

*  $DEFAULT_BRANCH                        : Default branch name, usually master or main"
*  $BRANCH_DELIMITER                      : Delimiter for branch info"
*  $BRANCH_PATH                           : The path where branch info are stored"
*  $CUSTOMIZED_GIT_PROMPT                 : To whether customize the prompt or not"
*  currentBranchPath                      : returns the branch path for the current repository"
*  editCurrentPath                        : opens current branch path in vim for manual editing"
*  list                                   : Lists all branches with their id, alias, and notes"
*  addBranchAlias <id> <alias> [<note>]   : Adds alias and note to a branch that is not stored yet"
*  updateBranchNote <id|alias> <note>     : adds/updates the notes for a branch base on id/alias"
*  branch <id> <alias> [<note>]           : creates a branch with id, alias, and note, and checks in"
*  check <id|alias>                       : checks into a branch base on an id or an alias"
*  del [...<id|alias>]                    : delete listed branches base on id or alias"
*  currentBranch                          : Returns the name of current branch with alias and note"
*  branchNameFromAlias <alias>            : Returns the branch name from an alias"
*  branchHelp                             : shows this list"


to add the functionalities, added `source gitBranchAlias.sh` in bash profile.

---

Copyright: Cyrus Mobini 2023
