# aula_teste

## ⚙️ Comandos Essenciais

### 1. `terraform init`
```bash
./terraform.exe init
```
- **O que faz:** Inicializa o diretório de trabalho
- **Quando usar:** Primeira vez ou após adicionar novos providers
- **O que acontece:**
  - Baixa os plugins dos providers (AWS, Azure, etc.)
  - Cria o diretório `.terraform/`
  - Cria o arquivo `.terraform.lock.hcl` (lock de versões)

### 2. `terraform validate`
```bash
./terraform.exe validate
```
- **O que faz:** Valida a sintaxe dos arquivos `.tf`
- **Quando usar:** Após escrever ou modificar código
- **Não verifica:** Se os recursos realmente existem na AWS

### 3. `terraform plan`
```bash
./terraform.exe plan
```
- **O que faz:** Mostra o que será criado/modificado/destruído
- **Quando usar:** Antes de aplicar mudanças
- **Saída:**
  - `+` = Será criado
  - `~` = Será modificado
  - `-` = Será destruído

### 4. `terraform apply`
```bash
./terraform.exe apply
```
- **O que faz:** Aplica as mudanças na infraestrutura real
- **Quando usar:** Após revisar o `plan`
- **Importante:** Pede confirmação antes de executar (digite `yes`)

### 5. `terraform destroy`
```bash
./terraform.exe destroy
```
- **O que faz:** Destrói TODA a infraestrutura gerenciada
- **Quando usar:** Para limpar recursos de teste
- **⚠️ CUIDADO:** Não tem volta!

### 6. `terraform output`
```bash
./terraform.exe output
./terraform.exe output bucket_id
```
- **O que faz:** Mostra os valores dos outputs
- **Quando usar:** Para consultar informações após o `apply`
