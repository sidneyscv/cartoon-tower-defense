# Cartoon Tower Defense

Projeto de jogo 3D Tower Defense em Unity com arquitetura modular, fluxo de trabalho Git e automações PowerShell.

## Visão Geral

- Projeto Unity: `unity/CartoonTowerDefense`
- Repositório: `cartoon-tower-defense`
- Foco: torres rotativas, ondas de inimigos, IA, sistema procedural e estilo cartoon

## Tecnologias

- Unity 6+
- Universal Render Pipeline (URP)
- C#
- Visual Studio Code
- Git + GitHub
- PowerShell

## Estrutura do Repositório

- `docs/` — documentação do projeto
- `unity/CartoonTowerDefense/` — projeto Unity principal
- `assets-source/` — fontes e conceitos de asset
- `scripts/` — ferramentas e build scripts
- `prototypes/` — experimentos e provas de conceito
- `setup-project.ps1` — inicialização do repositório
- `git-auto-push.ps1` — commit e push automatizados

## Configuração

1. Abra o projeto no Unity Hub em `unity/CartoonTowerDefense`
2. Abra o repositório na raiz em VS Code
3. Execute `setup-project.ps1` para preparar a estrutura inicial

## Scripts principais

- `setup-project.ps1`: configura pastas, documentação e `.gitignore`
- `git-auto-push.ps1`: detecta alterações, faz commit e envia para o repositório remoto

## Fluxo de Trabalho

1. Desenvolva no Unity em `unity/CartoonTowerDefense`
2. Mantenha o VS Code aberto na raiz do repositório
3. Teste no editor Unity
4. Use Git regularmente e execute `git-auto-push.ps1` para atualizar o remoto

## Direção do Projeto

- Estilo visual: cartoon, limpo e colorido
- Experiência: acessível, escalável e iterativa
- Prioridade: protótipo funcional antes de expandir para visual e recursos avançados

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

# Status Atual

Protótipo inicial funcional concluído com:
- rotação 360°
- disparo procedural
- prefab de projétil
- integração Unity + VS Code + GitHub
- workflow automatizado via PowerShell

O projeto encontra-se pronto para iniciar:
- IA básica
- sistema real de Tower Defense
- gameplay expandido
- ambiente 3D
- direção artística definitiva
# Autor

Projeto iniciado por Sidney S. C. Viana com arquitetura assistida por IA.

# Estado Atual do Projeto

O projeto já possui um primeiro protótipo funcional dentro da Unity.

---

## Torre

A torre foi criada proceduralmente utilizando:
- Cylinder
- Empty Objects
- Hierarquia modular

Estrutura atual:

```text
TowerRoot
├── BaseTower
├── TurretPivot
│   ├── CannonBody
│   └── FirePoint
```

---

## Rotação

O pivô:

```text
TurretPivot
```

realiza rotação contínua 360° usando:

```text
TowerRotation.cs
```

---

## Sistema de Disparo

O sistema de disparo já:
- instancia projéteis
- utiliza prefab
- utiliza FirePoint
- dispara automaticamente

Scripts atuais:
- SimpleShooter.cs
- Projectile.cs

---

## Projéteis

Os projéteis:
- possuem Rigidbody
- possuem Trigger Collider
- movimentam-se proceduralmente
- são destruídos ao colidir

---

## Alvo

Existe um alvo inicial:

```text
TargetDummy
```

utilizado para:
- testes
- colisão
- futura IA

---

## Conceito Visual

O conceito oficial do canhão encontra-se em:

```text
assets-source/concepts/
```

Referência principal:
- conceitos canhao.png

Estilo:
- cartoon
- stylized
- divertido
- modular
- legível

# Próximos Passos

1. Implementar mira automática
2. Detectar inimigos dentro do range
3. Criar sistema de dano
4. Criar destruição de inimigos
5. Criar sistema de waves
6. Implementar partículas
7. Criar materiais cartoon
8. Iniciar ambiente 3D
9. Estruturar HUD/UI
10. Criar inimigos reais

---

# Status Atual

Protótipo inicial funcional concluído com:
- rotação 360°
- disparo procedural
- prefab de projétil
- integração Unity + VS Code + GitHub
- workflow automatizado via PowerShell

O projeto encontra-se pronto para iniciar:
- IA básica
- sistema real de Tower Defense
- gameplay expandido
- ambiente 3D
- direção artística definitiva