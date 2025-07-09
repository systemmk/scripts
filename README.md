# MKSystem - Scripts de Ambiente de Desenvolvimento

Este repositório contém uma coleção de scripts para automatizar a configuração e o gerenciamento do ambiente de desenvolvimento para projetos da MKSystem.

## Pré-requisitos

Antes de começar, certifique-se de que você tenha os seguintes softwares instalados em sua máquina:

- [Node.js](https://nodejs.org/)
- [Docker](https://www.docker.com/products/docker-desktop/)

## Instalação

Para configurar seu ambiente de desenvolvimento, execute o seguinte comando em seu terminal. Ele fará o download e executará o script de instalação automaticamente, clonando os repositórios necessários.

```bash
curl -s https://raw.githubusercontent.com/systemmk/scripts/main/install.sh | bash
```

## Uso

Após a instalação, você pode usar os seguintes scripts para gerenciar seu ambiente:

- `run.sh`: Inicia os serviços de backend e frontend em modo de desenvolvimento.
- `run-supabase.sh`: Inicia apenas os serviços do banco de dados supabase.
- `stop.sh`: Para todos os serviços que estão em execução.
- `seed-users.sh`: Popula o banco de dados com usuários de teste.
- `install.sh`: O script de instalação inicial (normalmente executado apenas uma vez).

Para executar qualquer um dos scripts, utilize o seguinte formato no seu terminal:

```bash
./<nome-do-script>.sh
```

**Exemplo:**

```bash
# Para iniciar as aplicações
./run.sh
```

## Configuração do Frontend

Após a instalação, o projeto frontend exigirá um arquivo de configuração de ambiente.

1.  Navegue até o diretório do projeto frontend.
2.  Crie um arquivo chamado `.env.local` na raiz do projeto.
3.  Adicione as variáveis de ambiente necessárias a este arquivo.

> Consulte a documentação específica do projeto frontend para obter a lista de variáveis obrigatórias.
