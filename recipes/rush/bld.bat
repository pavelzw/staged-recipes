go build -buildmode=pie -trimpath -o="%LIBRARY_BIN%\rush.exe" -ldflags="-s -w -X main.Version=%PKG_VERSION%" || goto :error
go-licenses save . --save_path=license-files --ignore github.com/cznic/sortutil || goto :error

goto :EOF

:error
echo Failed with error #%errorlevel%.
exit 1