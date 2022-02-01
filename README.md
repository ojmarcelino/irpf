# Execute o programa da DIRPF com Docker

Faça sua Declaração do Imposto de Renda de Pessoa Física [(DIRPF)](https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf) usando Docker e sem instalar Java.

## Como usar

Em uma linha de comando e como usuário comum, execute usando sua opção preferida:

| Opção     | Comando                                                                                      |
|:----------|:---------------------------------------------------------------------------------------------|
| **curl**  | `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ojmarcelino/irpf/master/runtime.sh)"` |
| **fetch** | `sh -c "$(fetch -o - https://raw.githubusercontent.com/ojmarcelino/irpf/master/runtime.sh)"` |
| **wget**  | `sh -c "$(wget -O- https://raw.githubusercontent.com/ojmarcelino/irpf/master/runtime.sh)"`   |

Para cada ano fiscal, há imagem com tag diferente. Consulte <https://hub.docker.com/r/ojmarcelino/irpf>.

## Exemplos de uso

Em construção. Quer ajudar? Abre um PR!

## Contribuições

Consulte o guia [LICENSE.md](https://github.com/ojmarcelino/irpf/blob/main/CONTRIBUTING.md) para contribuir com o projeto, que contém instruções mais detalhadas.

## Tópicos avançados

Para aqueles que gostam de detalhes mais específicos (ou levantar o capô, escovar bit, enfim), confira [ADVANCED.md](https://github.com/ojmarcelino/irpf/blob/main/ADVANCED.md)

## Licença de uso

Usando licença GPL3-3.0, mais detalhes no [LICENSE.md](https://github.com/ojmarcelino/irpf/blob/main/LICENSE.md)
