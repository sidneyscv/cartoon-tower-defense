# Cartoon Tower Defense

Projeto de game 3D estilo cartoon desenvolvido com Unity + C# + VS Code.

O objetivo é criar um jogo Tower Defense procedural e expansível, com:
- torres rotativas 360°
- inimigos com IA
- sistema de ondas
- disparos e projéteis
- visual cartoon estilizado
- arquitetura modular
- integração com GitHub
- automações PowerShell

---

# Tecnologias

- Unity 6+
- Universal Render Pipeline (URP)
- C#
- Visual Studio Code
- Git + GitHub
- PowerShell
- Blender (futuramente para assets)

---

# Estrutura do Projeto

```text
cartoon-tower-defense/
│
├── docs/
│   ├── roadmap.md
│   ├── gameplay.md
│   ├── architecture.md
│   └── art-direction.md
│
├── unity/
│   └── CartoonTowerDefense/
│       ├── Assets/
│       ├── Packages/
│       ├── ProjectSettings/
│       └── UserSettings/
│
├── assets-source/
│   ├── blender/
│   ├── textures/
│   ├── concepts/
│   └── audio/
│
├── scripts/
│   ├── tools/
│   └── build/
│
├── prototypes/
│
├── setup-project.ps1
├── git-auto-push.ps1
├── .gitignore
└── README.md
```

---

# Organização

## Repositório principal

O repositório Git controla TODO o projeto a partir da raiz:

```text
cartoon-tower-defense
```

O projeto Unity NÃO possui repositório Git separado.

---

# Projeto Unity

O projeto Unity real fica em:

```text
unity/CartoonTowerDefense
```

O Unity Hub deve abrir ESTA pasta.

---

# VS Code

O VS Code deve abrir a RAIZ do repositório:

```text
cartoon-tower-defense
```

Isso garante:
- Git funcionando corretamente
- acesso aos scripts PS1
- acesso à documentação
- melhor integração com IA
- organização profissional

---

# Como Criar o Projeto Unity

## Unity Hub

Template recomendado:

```text
Universal 3D
```

Provider recomendado:

```text
None
```

O GitHub NÃO deve ser selecionado no Unity Hub.

O repositório Git já foi criado manualmente.

---

# Scripts PowerShell

## setup-project.ps1

Responsável por:
- criar estrutura de pastas
- criar documentação inicial
- gerar `.gitignore`

Execução:

```powershell
powershell -ExecutionPolicy Bypass -File .\setup-project.ps1
```

---

## git-auto-push.ps1

Responsável por:
- detectar alterações
- executar git add
- executar commit automático
- executar git push
- mostrar erros detalhados

Execução:

```powershell
powershell -ExecutionPolicy Bypass -File .\git-auto-push.ps1
```

---

# Fluxo de Trabalho

## Desenvolvimento

1. Abrir Unity Hub
2. Abrir:
   ```text
   unity/CartoonTowerDefense
   ```

3. Abrir VS Code na raiz:
   ```text
   cartoon-tower-defense
   ```

4. Desenvolver normalmente

5. Executar:
   ```powershell
   .\git-auto-push.ps1
   ```

---

# Objetivos do Projeto

## Gameplay

- Tower Defense
- Canhões rotativos
- Sistema de mira
- Ondas de inimigos
- Sistema procedural
- Upgrade de torres
- IA básica e avançada

---

# Direção de Arte

Estilo:
- cartoon
- divertido
- legível
- colorido
- atrativo para jovens e adultos

Referências:
- Orcs Must Die
- Kingdom Rush
- Dungeon Defenders
- Team Fortress stylized props

---

# Roadmap Inicial

## Fase 1 — Protótipo

- [ ] Torre procedural
- [ ] Rotação 360°
- [ ] Disparo
- [ ] Inimigo simples
- [ ] Sistema de colisão

---

## Fase 2 — Gameplay

- [ ] Sistema de waves
- [ ] Pathfinding
- [ ] Vida dos inimigos
- [ ] Upgrade de torres
- [ ] HUD

---

## Fase 3 — Visual

- [ ] Shaders cartoon
- [ ] Partículas
- [ ] Sons
- [ ] Animações
- [ ] Assets 3D reais

---

## Fase 4 — Expansão

- [ ] Multiplayer
- [ ] Mobile build
- [ ] Steam build
- [ ] Loja interna
- [ ] Save system

---

# Git Ignore

O projeto ignora:
- Library/
- Temp/
- arquivos temporários do Unity
- arquivos temporários do VS Code
- arquivos compilados

Isso evita:
- repositório gigante
- conflitos
- lentidão

---

# Observações Importantes

## NÃO criar Git dentro do Unity

NÃO executar:

```powershell
git init
```

dentro de:

```text
unity/CartoonTowerDefense
```

Existe apenas UM repositório Git:
- cartoon-tower-defense

---

# Próximos Passos

1. Criar primeira torre procedural
2. Criar sistema de rotação
3. Criar disparo
4. Criar alvo básico
5. Criar primeira cena jogável

---

# Autor

Projeto iniciado por Sidney com arquitetura assistida por IA.