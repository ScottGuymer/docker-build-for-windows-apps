docker build -t winforms .

docker create --name build winforms

docker cp build:c:\code\bin\Debug\clicker.exe .

docker rm build