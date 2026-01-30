# Deploy Bucket

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

## 🎯 Resumo para os Alunos

| Arquivo | Propósito | Analogia |
|---------|-----------|----------|
| **variables.tf** | Define parâmetros de entrada | Argumentos de uma função |
| **main.tf** | Define a infraestrutura | Corpo da função |
| **outputs.tf** | Define o que retornar | Return da função |
| **terraform.tfstate** | Guarda o estado atual | Banco de dados do Terraform |

### 🔑 Conceitos-Chave:

1. **Provider**: O "tradutor" entre Terraform e a cloud
2. **Resource**: Algo que você quer criar (bucket, VM, rede)
3. **Variable**: Parâmetro configurável
4. **Output**: Informação que você quer visualizar
5. **State**: A "memória" do Terraform sobre o que foi criado

---

## 📚 Exercícios Práticos

### Exercício 1: Modificar a região
Altere a região padrão para `sa-east-1` (São Paulo) no arquivo `variables.tf`.

### Exercício 2: Adicionar uma nova tag
Adicione uma tag `Project = "Terraform Aula"` ao bucket.

### Exercício 3: Criar um novo output
Crie um output que mostre a região do bucket.

**Dica:**
```hcl
output "bucket_region" {
  description = "Região onde o bucket foi criado"
  value       = aws_s3_bucket.bucket_da_aula.region
}
```

---

## 🚨 Erros Comuns e Soluções

### Erro 1: "Error: Missing required provider"
**Solução:** Execute `terraform init` primeiro

### Erro 2: "Error: Unsupported argument"
**Causa:** Usando argumentos deprecados (como `acl` dentro de `aws_s3_bucket`)
**Solução:** Use recursos separados (`aws_s3_bucket_acl`)

### Erro 3: "BucketAlreadyExists"
**Causa:** Nome do bucket já existe globalmente
**Solução:** Mude o `bucket_name_prefix` ou adicione um sufixo único

---

## 🎓 Boas Práticas

1. ✅ **Sempre use variáveis** para valores que podem mudar
2. ✅ **Sempre adicione descriptions** em variáveis e outputs
3. ✅ **Sempre use tags** para organização
4. ✅ **Sempre rode `plan`** antes de `apply`
5. ✅ **Nunca edite** o arquivo `terraform.tfstate` manualmente
6. ✅ **Versione seu código** no Git (exceto `.tfstate`)

---

## 📖 Recursos Adicionais

- [Documentação Oficial do Terraform](https://www.terraform.io/docs)
- [Registry do Terraform](https://registry.terraform.io/) - Providers e Módulos
- [AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
