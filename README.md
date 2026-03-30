# 🚀 Blog Django com Docker

Projeto de um blog desenvolvido em Django, preparado para execução com Docker e PostgreSQL, utilizando boas práticas de organização e segurança.

## 📌 Tecnologias

- Python 3.11  
- Django  
- PostgreSQL  
- Docker e Docker Compose  
- python-decouple (variáveis de ambiente)

## ⚙️ Funcionalidades

- Configuração via variáveis de ambiente  
- Integração com banco PostgreSQL  
- Estrutura pronta para Docker  
- Suporte a arquivos estáticos (STATIC)  
- Suporte a uploads (MEDIA)  
- Organização de configurações  


## 📦 Como executar

## 1. Criar o arquivo `.env`

Crie um arquivo chamado `.env` na raiz do projeto e baseie-se no conteúdo abaixo (ou no arquivo `.env.example`):

```env
DEBUG=True
SECRET_KEY=sua_chave_aqui
DB_NAME=postgres
DB_USER=postgres
DB_PASSWORD=postgres
DB_HOST=db
DB_PORT=5432
```
## 2. 🚀 Subir os containers

Certifique-se de que o Docker está rodando e execute o comando:

```bash
docker-compose up --build
```

## 3. 🌐 Acessar o projeto

Após a inicialização, o projeto estará disponível no navegador:
```
👉 http://localhost:8000
```
## 🎯 Objetivo

Fornecer uma base sólida para o desenvolvimento de um blog em Django com Docker, garantindo facilidade de execução, segurança com variáveis de ambiente e boa organização do projeto.
Produtividade: configuração simplificada para desenvolvedores iniciarem rapidamente sem setup manual.

Organização: separação clara entre configurações de desenvolvimento e produção.
