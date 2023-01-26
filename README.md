
### LineCounter

This bash script will go recursively through all the files and will count all the lines and return the total number of lines
If not path is provided or the provideded path doesn't exists, it will recursively count from current directory.
#### Example
```sh
$ bash ../Scripts/CountLines.sh ./src
There are a total of 3050 lines
```

### AcountStats

This Bash will count all the lines add, removed, and total number of line for the given git user display for the current git repository
#### Example
```sh
$ bash ../Scripts/AccountStats.sh cyrus2281
added lines: 212 removed lines: 131 total lines: 343
```

Copyright: Cyrus Mobini 2021
