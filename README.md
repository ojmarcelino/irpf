# Execute o programa da DIRPF com Docker

Faça sua Declaração do Imposto de Renda de Pessoa Física [(DIRPF)](https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf) usando Docker e sem instalar Java.

## Como usar

Em uma linha de comando e como usuário comum, execute usando sua opção preferida:

| Opção    | Comando                                                                                           |
|:----------|:--------------------------------------------------------------------------------------------------|
| **curl**  | `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ojmarcelino/irpf/master/runtime.sh)"` |
| **wget**  | `sh -c "$(wget -O- https://raw.githubusercontent.com/ojmarcelino/irpf/master/runtime.sh)"`   |

Para cada ano fiscal, há uma imagem com tag diferente. Consulte anos anteriores disponíveis em <https://hub.docker.com/r/ojmarcelino/irpf>.

## Contribuições

Toda ajuda é válida! Mande seu PR ou e-mail (confira a política de segurança) que serei grato em responder.
