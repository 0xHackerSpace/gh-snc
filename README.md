# gh-snc

a repo para explorar o desenvolvimento de extensões para a gh cli

## Estrutura

```
gh-snc              # entrypoint (bash) — "gh snc <command>"
lib/commands/*.sh    # um arquivo por subcomando
test/*.bats          # testes (bats-core)
.github/workflows/   # CI: shellcheck + bats
docs/                # notas de uso/extensão
```

Instalar localmente: `gh extension install .`
Testar: `gh snc hello [nome]`

## AI-DLC

Este projeto usa o [AI-DLC](https://github.com/awslabs/aidlc-workflows) (AI-Driven
Development Life Cycle) para o harness Claude Code. Runtime completo copiado em
`.claude/` (agentes, hooks, protocolos de estágio) e workspace em `aidlc/`.

- Abra o Claude Code neste diretório e rode `/aidlc` para iniciar/retomar um fluxo.
- `bun .claude/tools/aidlc.ts --doctor` valida a instalação.
- Detalhes e convenções: `.claude/CLAUDE.md`.
- MCP servers opcionais (context7, AWS) não foram habilitados (`.mcp.json` não
  incluído) — ver `docs/guide/harnesses/README.md` do AI-DLC para adicioná-los.
