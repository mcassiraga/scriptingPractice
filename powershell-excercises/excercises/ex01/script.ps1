$files = Get-ChildItem -Path "C:\Users\dm285bk\Downloads\powershell-excercises\excercises\ex01\myapp\applogs\*" -Recurse -Include log*

ForEach ($file in $files) {
    $file | Rename-Item -newname { $_.FullName +".log" }
}