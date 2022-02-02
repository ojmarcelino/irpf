# Se interessou, né? Sim, vamos mudar isso aqui nas próximas semanas.

## Botando a mão na massa

O conceito é simples até, a imagem em si é compilada em múltiplos estágios (multistage build), no primeiro estágio, só "força" o jlink a criar um runtime minimal e deixo ele ali, inerte até a execução da segundo estágio, que vai receber cópia apenas da pasta do "java minimal". Ambas as builds rodam sobre Alpine Linux o Java 11 (openjdk). Depois, para usar a parte GUI do DIRPF é só rodar com `xhost` o jar.


### Pré-requisitos

- Um sistema operacional compatível com Docker: macOS, Linux, BSD. Em Windows: WSL2 roda melhor, mas cygwin, msys ou o próprio cliente Docker é suficiente.
- [Docker](https://www.docker.com) precisa estar instalado e operando funcionalmente. Execute `docker -v` para confirmar se está tudo ok, use a imagem básica do hello-world ou qualquer outra preferida, consulte a documentação própria [hello-world](https://hub.docker.com/_/hello-world)
- `curl` , `fetch` ou `wget` precisam estar instalados e funcionando.
- `git` precisa estar instalado e funcionando.

### Instalação básica

| Opção     | Comando                                                                                      |
|:----------|:---------------------------------------------------------------------------------------------|
| **curl**  | `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ojmarcelino/irpf/master/runtime.sh)"` |
| **fetch** | `sh -c "$(fetch -o - https://raw.githubusercontent.com/ojmarcelino/irpf/master/runtime.sh)"` |
| **wget**  | `sh -c "$(wget -O- https://raw.githubusercontent.com/ojmarcelino/irpf/master/runtime.sh)"`   |

#### Inspeção manual

É considerada boa prática, uma inspeção de segurança na execução de scripts de projetos em repositórios que você não controla. Faça um clone do repositório em uma pasta local, ajuste os parâmetros dos arquivos como achar necessário e execute conforme seu critério:

```sh
wget https://raw.githubusercontent.com/ojmarcelino/irpf/master/tools/install.sh
sh install.sh
```

Caso precise rodar uma versão mais antiga do programa, informe o ano como argumento da build, ou edite o `Dockerfile` com base no ano desejado.

Para saber mais, acesse a [página oficial da Receita Federal](https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf)

### FAQ

Detalhamento posterior...[FAQ](https://github.com/ojmarcelino/irpf/wiki/FAQ). AVISO, pasta e arquivos ainda não criados.

### Instalação avançada

Alguns usuários podem querer instalar manualmente algum componente, modificar alguma especificação, versão ou outras características.

[FAQ](https://github.com/ojmarcelino/irpf/wiki/FAQ). AVISO, pasta e arquivos ainda não criados.

#### Pasta personalizada

Detalhamento posterior...[FAQ](https://github.com/ojmarcelino/irpf/wiki/FAQ). AVISO, pasta e arquivos ainda não criados.

#### Instalação e execução automatizada por tag/ano

Detalhamento posterior...[FAQ](https://github.com/ojmarcelino/irpf/wiki/FAQ). AVISO, pasta e arquivos ainda não criados.

#### Instalação manual

##### 1. Clone o repositório

Detalhamento posterior...[FAQ](https://github.com/ojmarcelino/irpf/wiki/FAQ). AVISO, pasta e arquivos ainda não criados.

##### 2. Mapear o volume conforme seus arquivos

Detalhamento posterior...[FAQ](https://github.com/ojmarcelino/irpf/wiki/FAQ). AVISO, pasta e arquivos ainda não criados.

##### 3. Se precisar...

Detalhamento posterior...[FAQ](https://github.com/ojmarcelino/irpf/wiki/FAQ). AVISO, pasta e arquivos ainda não criados.

### Problemas conhecidos

Detalhamento posterior...[FAQ](https://github.com/ojmarcelino/irpf/wiki/FAQ). AVISO, pasta e arquivos ainda não criados.

## Atualizações automáticas

Detalhamento posterior...[FAQ](https://github.com/ojmarcelino/irpf/wiki/FAQ). AVISO, pasta e arquivos ainda não criados.

## Atualização manual

Detalhamento posterior...[FAQ](https://github.com/ojmarcelino/irpf/wiki/FAQ). AVISO, pasta e arquivos ainda não criados.

## Desinstalação

Detalhamento posterior...[FAQ](https://github.com/ojmarcelino/irpf/wiki/FAQ). AVISO, pasta e arquivos ainda não criados.

## Licença de uso

Usando licença GPL3-3.0, mais detalhes no [LICENSE.md](https://github.com/ojmarcelino/irpf/blob/main/LICENSE.md)
