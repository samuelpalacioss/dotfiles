## Add to Path Environment Variables (System Variables):
(To make lsp's work)
```
C:\Users\YOURUSERNAME\AppData\Local\nvim-data\mason\bin 
```

## For DAP
### 1. Install globally these:
```
npm install -g typescript
npm install -g tsx
```
### 2: Do this in C:\Users\YOURUSERNAME
```
git clone https://github.com/microsoft/vscode-js-debug
cd vscode-js-debug
npm install --legacy-peer-deps
npx gulp vsDebugServerBundle
mv dist out
```
### 3: Install delve for debuggin in Go: 
[nvim-dap - Go (Using Delve Directly)](https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#go-using-delve-directly)
```
go install github.com/go-delve/delve/cmd/dlv@latest
```
