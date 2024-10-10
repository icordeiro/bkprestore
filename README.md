# Ferramenta de Backup PostgreSQL - pg_backup_tool

Este projeto é uma ferramenta simples e fácil de usar para fazer backup e restauração de um banco de dados PostgreSQL. O usuário pode escolher entre exportar um backup do banco, importar um backup existente, ou controlar o serviço PostgreSQL diretamente (iniciar, reiniciar ou parar).

## Recursos

- **Exportação de banco de dados**: Faça backup de um banco de dados PostgreSQL no formato comprimido (`.backup`).
- **Importação de banco de dados**: Restaure um banco de dados a partir de um arquivo de backup.
- **Controle de serviço PostgreSQL**: Inicie, reinicie ou pare o serviço PostgreSQL diretamente a partir do script.
- **Logs de processo**: Todos os resultados de exportação, importação ou controle de serviço são registrados em um arquivo de log.

## Pré-requisitos

- **PostgreSQL**: Certifique-se de que o `pg_dump` e o `pg_restore` estão disponíveis no sistema.
- **Sistema operacional Windows**: Este script foi projetado para sistemas Windows.
- **Configuração do serviço**: Ajuste o nome do serviço PostgreSQL de acordo com a versão instalada.

## Instalação

1. Clone este repositório em seu computador:

    ```bash
    git clone https://github.com/seu-usuario/pg_backup_tool.git
    ```

2. Abra o arquivo `pg_backup_tool.bat` em um editor de texto e configure as seguintes variáveis de ambiente de acordo com o seu sistema:

    ```batch
    set PGPASSWORD=your_password           REM Substitua com a senha do banco de dados
    set DB_HOST=localhost                  REM Host do banco de dados
    set DB_PORT=38561                      REM Porta do banco de dados
    set DB_USER=postgres                   REM Usuário do banco de dados
    set DB_NAME=vr                         REM Nome do banco de dados
    set BACKUP_DIR=C:\bkp                  REM Diretório para armazenar os backups
    set LOG_FILE=C:\log.log                REM Caminho para o arquivo de log
    set PG_SERVICE_NAME=postgresql-x64-13  REM Nome do serviço PostgreSQL (ajuste conforme a versão)
    ```

3. Verifique se o caminho para o `pg_dump.exe` e `pg_restore.exe` está incluído na variável de ambiente `PATH` do sistema.

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
    - **[3] Iniciar Serviço PostgreSQL**: Inicia o serviço do PostgreSQL.
    - **[4] Reiniciar Serviço PostgreSQL**: Reinicia o serviço do PostgreSQL.
    - **[5] Parar Serviço PostgreSQL**: Para o serviço do PostgreSQL.
    - **[0] Sair**: Sai do script.

### Exemplo de execução

```bash
===============================
      FERRAMENTA DE BACKUP
===============================
[1] Exportar Backup do Banco
[2] Importar Backup no Banco
[3] Iniciar Servico PostgreSQL
[4] Reiniciar Servico PostgreSQL
[5] Parar Servico PostgreSQL
[0] Sair
 ===============================
Escolha uma opcao: 1

Iniciando exportação do banco de dados...
Exportação concluída com sucesso! Veja os detalhes no arquivo de log: C:\log.log

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir um problema (issue) ou enviar um pull request.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
