1. Run the packer bootstrap:

```bash
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

2. Update Treesitter parser:

```bash
nvim --headless -c 'TSUpdate' -c 'PackerSync'
```
