# Build options
CS_SRC := $(wildcard csharp/*.cs) $(wildcard csharp/*/*.cs)

all : fizzbuzz-sharp fizzbuzz-skell

fizzbuzz-sharp : $(CS_SRC)
	cd csharp; dotnet publish fizzbuzz.csproj -f netcoreapp3.1 -p:PublishSingleFile=true -r linux-x64
	cp csharp/bin/Debug/netcoreapp3.1/linux-x64/publish/fizzbuzz ./fizzbuzz-sharp

fizzbuzz-skell : $(wildcard haskell/src/*.hs) haskell/app/Main.hs
	cd haskell; stack build
	cp haskell/.stack-work/dist/x86_64-linux-tinfo6/Cabal-3.0.1.0/build/fizzbuzz/fizzbuzz ./fizzbuzz-skell

# Probably won't work on yours, that's why it's not in all
FizzBuzz.png : fizzbuzz.plantuml
	plantuml fizzbuzz.plantuml ./

.PHONY : clean
clean :
	rm -rf FizzBuzz.png
	rm -rf haskell/.stack-work
	rm -rf csharp/obj
	rm -rf csharp/bin
	rm -rf fizzbuzz-*
