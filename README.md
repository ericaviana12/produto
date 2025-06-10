![GitHub License](https://img.shields.io/github/license/ericaviana12/produto?style=flat-square)

# 🛒 Sistema de cadastro de produtos

## 📋 Descrição

Este projeto consiste em um sistema web para cadastro, listagem, edição e exclusão de produtos utilizando Java (Servlets e JSP), Bootstrap para o front-end, e Java Time API para manipulação de datas. O sistema oferece uma interface amigável para gerenciar produtos com atributos como nome, quantidade, valor unitário e data de cadastro.

## 🛠 Tecnologias Utilizadas

- ☕ Java SE 8+ (com `LocalDate` para datas)
- 🌐 JSP (JavaServer Pages)
- 🚦 Servlets (para controle de requisições, não incluídos aqui, mas esperados)
- 🎨 Bootstrap 4 (layout responsivo e componentes)
- 📜 JavaScript (confirmação de exclusão)
- 🖥️ HTML5 (validação de formulários)
- 🎨 CSS personalizado (simples para estilização)

## 📂 Estrutura do Projeto

### 📦 Pacote `model`

- **JavaBeans.java**  
  Classe modelo que representa um produto, com os seguintes atributos:
  - `int id`
  - `String nome`
  - `int qtde`
  - `float valor_unit`
  - `LocalDate data_cad`

- **DAO.java**  
  Classe responsável pela conexão com o banco de dados e pelas operações CRUD (Create, Read, Update, Delete) dos produtos. Ela gerencia a comunicação com o banco utilizando JDBC.

### 💻 Front-end

- **index.html**  
  Página inicial simples, com link para acessar o sistema.

- **novo.html**  
  Formulário para cadastrar um novo produto. Usa validação HTML5.

- **cadastro.jsp**  
  Exibe a lista de produtos em tabela com opções para editar ou excluir.

- **confirmar.js**  
  Script para exibir uma confirmação antes de excluir um produto.

- **editar.jsp**  
  Formulário para edição dos dados do produto selecionado.

- **style.css**  
  Arquivo de estilos simples para o layout básico do projeto.

## ⚙️ Funcionalidades

- 📋 **Listar Produtos:** Exibe todos os produtos cadastrados com ID, nome, quantidade, valor unitário formatado em reais, e data de cadastro formatada (dd/MM/yyyy).
- ➕ **Cadastrar Produto:** Formulário para inclusão de novo produto.
- ✏️ **Editar Produto:** Formulário para edição dos dados de um produto selecionado.
- 🗑️ **Excluir Produto:** Botão para excluir produto com confirmação via JavaScript.
- ✅ **Validação:** Formulários com validação básica no front-end (HTML5).

## 🚀 Como Executar o Projeto

1. 🔧 **Configurar o ambiente:**

   - JDK 8 ou superior instalado.
   - Servidor de aplicação compatível com JSP/Servlets (ex: Apache Tomcat).
   - Banco de dados (não incluído nos arquivos enviados, mas recomendado, ex: MySQL).

2. 🛠️ **Importar o projeto na IDE:**

   - Importe como um projeto Java Web.
   - Configure o build path para incluir bibliotecas necessárias.

3. 🗄️ **Configurar o banco de dados:**

   - Crie tabela para produtos com colunas correspondentes (`id`, `nome`, `qtde`, `valor_unit`, `data_cad`).
   - Implemente DAOs (Data Access Objects) para persistência dos dados (não incluídos aqui).

4. ▶️ **Executar o servidor e acessar:**

   - Inicie o servidor.
   - Acesse o projeto no navegador pelo endereço configurado (ex: `http://localhost:8080/seuprojeto/index.html`).

---

✨ **Projeto desenvolvido por Erica Viana para fins educativos e de prática em Java Web.** 
