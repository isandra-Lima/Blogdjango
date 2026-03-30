🚀 Blog Django com Docker

Projeto de um blog desenvolvido em Django, preparado para execução com Docker e PostgreSQL, utilizando boas práticas de organização e segurança.

📌 Tecnologias

• Python 3.11
• Django
• PostgreSQL
• Docker & Docker Compose
• Decouple (variáveis de ambiente)

⚙️ Funcionalidades

• Configuração via variáveis de ambiente
• Integração com banco PostgreSQL
• Estrutura pronta para Docker
• Suporte a arquivos estáticos (STATIC)
• Suporte a uploads (MEDIA)
• Organização de settings

📦 Como executar
1. Clonar o repositório
git clone https://github.com/seu-usuario/seu-repo.git
cd seu-repo
2. Criar o arquivo .env

Baseie-se no .env.example:

DEBUG=True
SECRET_KEY=sua_chave_aqui
DB_NAME=postgres
DB_USER=postgres
DB_PASSWORD=postgres
DB_HOST=db
DB_PORT=5432

3. Subir os containers
docker-compose up --build

4. Acessar a aplicação
http://localhost:8000

🗂 Estrutura do projeto
Blogdjango/
├── mysite/
├── dotenv_files/
├── docker-compose.yml
├── Dockerfile
├── requirements.txt
├── .env.example
└── .dockerignore

🧪 Testes
docker-compose run web python manage.py test
🔒 Boas práticas

• Uso de variáveis de ambiente
• Arquivos sensíveis ignorados
• Separação de configuração e código
• Uso de Docker para padronização

🎯 Objetivo

Facilitar o desenvolvimento e deploy do projeto utilizando containerização, garantindo consistência entre ambientes.
