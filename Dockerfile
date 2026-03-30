FROM python:3.11-slim

LABEL maintainer="isandra-Lima"

#  Variáveis de ambiente
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

#  Diretório de trabalho
WORKDIR /app

#  Dependências do sistema (SO)
RUN apt-get update && \
    apt-get install -y netcat-openbsd && \
    rm -rf /var/lib/apt/lists/*

#  Criar ambiente virtual
RUN python -m venv /venv

#  Copiar só requirements (usa cache)
COPY requirements.txt .

#  Instalar dependências Python
RUN /venv/bin/pip install --upgrade pip && \
    /venv/bin/pip install --no-cache-dir -r requirements.txt

#  Copiar scripts e dar permissão
COPY scripts /scripts
RUN chmod -R +x /scripts

#  Copiar projeto (por último pra não quebrar cache)
COPY . .

#  Criar usuário (segurança)
RUN adduser --disabled-password --no-create-home duser

#  Criar diretórios necessários
RUN mkdir -p /data/web/static && \
    mkdir -p /data/web/media

#  Ajustar permissões
RUN chown -R duser:duser /app /venv /scripts /data

#  PATH
ENV PATH="/scripts:/venv/bin:$PATH"

#  Usuário não-root
USER duser

#  Porta
EXPOSE 8000

#  Comando inicial
CMD ["commands.sh"]