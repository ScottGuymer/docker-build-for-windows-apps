FROM compulim/msbuild

WORKDIR c:\\code

ADD clicker .

RUN msbuild clicker.sln /p:Configuration=Debug /p:Platform="Any CPU"