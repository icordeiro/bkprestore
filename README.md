# Ferramenta de Backup PostgreSQL - bkprestore

Este projeto é uma ferramenta simples e fácil de usar para fazer backup e restauração de um banco de dados PostgreSQL. O usuário pode escolher entre exportar um backup do banco ou importar um backup existente usando um menu interativo em um script batch.

## Recursos

- **Exportação de banco de dados**: Faça backup de um banco de dados PostgreSQL no formato comprimido (`.backup`).
- **Importação de banco de dados**: Restaure um banco de dados a partir de um arquivo de backup.
- **Logs de processo**: Todos os resultados de exportação ou importação são registrados em um arquivo de log.

## Pré-requisitos

- **PostgreSQL**: Certifique-se de que o `pg_dump` e o `pg_restore` estão disponíveis no sistema (normalmente incluídos com a instalação do PostgreSQL).
- **Sistema operacional Windows**: Este script foi projetado para sistemas Windows.

## Instalação

1. Clone este repositório em seu computador:

    ```bash
    git clone https://github.com/seu-usuario/pg_backup_tool.git
    ```

2. Abra o arquivo `pg_backup_tool.bat` em um editor de texto e configure as seguintes variáveis de ambiente de acordo com o seu sistema:

    ```batch
    set PGPASSWORD=your_password    REM Substitua com a senha do banco de dados
    set DB_HOST=localhost            REM Host do banco de dados
    set DB_PORT=38561                REM Porta do banco de dados
    set DB_USER=postgres             REM Usuário do banco de dados
    set DB_NAME=vr                   REM Nome do banco de dados
    set BACKUP_DIR=C:\bkp            REM Diretório para armazenar os backups
    set LOG_FILE=C:\log.log          REM Caminho para o arquivo de log
    ```

3. Verifique se o caminho para o `pg_dump.exe` e `pg_restore.exe` está incluído na variável de ambiente `PATH` do sistema. Caso contrário, adicione o caminho do diretório `bin` da instalação do PostgreSQL ao `PATH`.

## Como Usar

### Executar o script

1. Navegue até o diretório onde está o arquivo `pg_backup_tool.bat`.
2. Execute o script:

    ```bash
    pg_backup_tool.bat
    ```

3. Escolha uma das opções do menu:
    - **[1] Exportar Backup do Banco**: Exporta o banco de dados atual para um arquivo `.backup` no diretório especificado.
    - **[2] Importar Backup no Banco**: Restaura o banco de dados a partir de um arquivo `.backup`.
    - **[0] Sair**: Sai do script.

### Exemplo de execução

```bash
===============================
     FERRAMENTA DE BACKUP
===============================
[1] Exportar Backup do Banco
[2] Importar Backup no Banco
[0] Sair
===============================
Escolha uma opcao: 1

Iniciando exportação do banco de dados...
Exportação concluída com sucesso! Veja os detalhes no arquivo de log: C:\log.log
