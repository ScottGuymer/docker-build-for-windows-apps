FROM compulim/msbuild

WORKDIR c:\\code

ADD clicker/packages.config clicker/clicker.csproj clicker/clicker.sln ./

RUN nuget restore

ADD clicker .

RUN msbuild clicker.sln /p:Configuration=Debug /p:Platform="Any CPU"