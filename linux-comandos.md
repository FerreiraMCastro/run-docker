# 🐧 Comandos Básicos de Linux

## 🔍 Navegação e Manipulação de Diretórios
```bash
pwd                # Mostra o diretório atual
ls                 # Lista arquivos e pastas
ls -la             # Lista detalhada, incluindo arquivos ocultos
cd <pasta>         # Entra na pasta
cd ..              # Volta um nível
mkdir <pasta>      # Cria uma pasta
rm -r <pasta>      # Remove pasta e arquivos dentro
```

## 📄 Manipulação de Arquivos
```bash
touch <arquivo>    # Cria um arquivo vazio
rm <arquivo>       # Remove arquivo
mv <origem> <destino>  # Move ou renomeia arquivo/pasta
cp <origem> <destino>  # Copia arquivo ou pasta
cat <arquivo>      # Mostra conteúdo do arquivo
nano <arquivo>     # Edita arquivo (editor simples)
```

## ⚙️ Gerenciamento de Processos
```bash
ps aux             # Lista todos os processos
top                # Mostra processos em tempo real
htop               # (se instalado) monitoramento mais amigável
kill <PID>         # Encerra um processo pelo PID
```

## 🌐 Rede
```bash
ip a               # Mostra interfaces de rede
ping <host>        # Testa conexão
curl <url>         # Faz requisição HTTP
```

## 🗑️ Limpeza e Espaço
```bash
df -h              # Mostra espaço em disco
du -sh *           # Tamanho de pastas e arquivos no diretório
```