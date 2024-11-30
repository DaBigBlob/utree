# utree

## building
`BFLAGS` are passed to the compiler while building.  
`CC` is the c compiler. Set by default to `zig cc` for easy cross compilation.
you may set `CC` to your desired c compiler (recommended clang or gcc).  
however if you do so, make sure to change `BFLAGS` appropriately.
### macos arm64
```bash
make build BFLAGS="-target aarch64-macos" NAME="utree-macos-arm64"
```
### macos x86_64
```bash
make build BFLAGS="-target x86_64-macos" NAME="utree-macos-x64"
```
### linux arm64
```bash
make build BFLAGS="-target aarch64-linux-musl" NAME="utree-linux-arm64"
```
### linux x86_64
```bash
make build BFLAGS="-target x86_64-linux-musl" NAME="utree-linux-x64"
```
### windows arm64
```bash
make build BFLAGS="-target aarch64-windows-msvc t-Wl,/subsystem:console,-s" NAME="utree-windows-arm64"
```
### windows x86_64
```bash
make build BFLAGS="-target x86_64-windows-msvc -Wl,/subsystem:console,-s" NAME="utree-windows-x64"
```