# Adicionando um subcomando

1. Crie `lib/commands/<nome>.sh` com uma função `cmd_<nome>() { ... }`.
2. `chmod +x lib/commands/<nome>.sh`.
3. `gh snc <nome> [args]` já funciona — o router em `gh-snc` carrega o arquivo pelo nome.
4. Adicione um teste em `test/<nome>.bats` seguindo `test/hello.bats`.
