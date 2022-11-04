para listar oque o go pode gerar
$ go tool dist list

para buildar'para android 

$ CGO_ENABLED=1 GOOS="android" GOARCH="amd64" GOARM="" go build -buildmode=c-shared -o lib.so hello.go

caso voce precise ter um CPATH
export CPATH="$(clang -v 2>&1 | grep "Selected GCC installation" | rev | cut -d' ' -f1 | rev)/include"

caso voce precise dizer onde está o android ndk
CGO_ENABLED=1 GOOS="android" GOARCH="amd64" GOARM="" CC=/mnt/dev/develop/android/sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/bin/x86_64-linux-android21-clang go build -buildmode=c-shared -o lib.so hello.go