ggrep -oP "source\[.+, id\[" find-traces | gsed 's/source\[\(.*\)\], id\[/\1/g'
