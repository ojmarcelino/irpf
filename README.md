# Execute o programa da DIRPF em Docker

Permite executar o programa de Declaração do Imposto de Renda de Pessoa Física [(DIRPF)](https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf) usando Docker.

Minha intenção foi chegar em um comando de linha única para preencher a declaração de IRPF, com base nos ~~devaneios cognitivos~~ fontes do colega [@aureliojargas](https://github.com/aureliojargas), cito:

> Instalar o Java? Não, obrigado.

Claro, vários amigos já perguntaram, mas tem que rodar em Docker? Não, oras, pode instalar o Java e seus amiguinhos, e usar pelo método tradicional, claro. A opção aqui é para quem já usa algum o Docker e não quer ficar atualizando versão disso, daquilo, aí esse 'oneliner' abaixo é praticamente um 'caramba, porque não fiz isso antes'.

## Como usar

Escolha seu método preferido, abra um terminal ou linha de comando, como usuário comum (não root):

| Método    | Comando                                                                                           |
|:----------|:--------------------------------------------------------------------------------------------------|
| **aria2**  | `sh -c "$(aria2 -fsSL https://raw.githubusercontent.com/ojmarcelino/irpf/master/runtime.sh)"` |
| **curl**  | `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ojmarcelino/irpf/master/runtime.sh)"` |
| **fetch** | `sh -c "$(fetch -o - https://raw.githubusercontent.com/ojmarcelino/irpf/master/tools/runtime.sh)"` |
| **wget**  | `sh -c "$(wget -O- https://raw.githubusercontent.com/ojmarcelino/irpf/master/tools/runtime.sh)"`   |

Consulte outras imagens disponíveis no [Docker Hub](https://hub.docker.com/r/ojmarcelino/irpf).

### Inspeção manual

É considerada uma boa prática uma inspeção de segurança na execução de scripts de projetos em repositórios que você não controla. Faça um clone do repositório em uma pasta local, ajuste os parâmetros dos arquivos como achar necessário, e depois de inspecionar o código, constatar que não não só não há nenhuma vulnerabilidade, como foram seguidas boas práticas de segurança para a criação deste repositório.

Caso precise rodar uma versão mais antiga do programa, informe o ano como argumento, com base na lista de versões disponíveis abaixo, ou, se preferir, edite o `Dockerfile` e altere a URL para atender à sua necessidade do ano em específico.

Se quiser ir direto na fonte, as imagens que estão no Docker já aparecem com as tags referentes aos últimos anos que a Receita Federal disponibiliza os programas.

Para saber mais, acesse a [página oficial da Receita Federal](https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf)

## Contribuições

Toda ajuda é bem-vinda! Veja se você tem uma sugestão de melhoria, mande um PR ou e-mail (confira abaixo a política de segurança).

## Política de segurança

### Considerações gerais

(ou... cara, como raios vou saber se esse treco é seguro?)

Parafraseando Pinóquio, no diálogo com o Encantado:

Não seria impreciso supor que eu não poderia, digamos, exatamente não dizer que esta é, ou não, uma versão parcialmente segura. Pelo contrário, eu estou, possivelmente, mais ou menos, até, não total e definitivamente rejeitando hipóteses de que exista algum tipo específico de problema que possa causar algum dano, ou ainda, que possa ou não vir a causar algum comportamento não totalmente passivo de ser imprevisível, sobre o que se deve conhecer, ou não, após exauridas todas as correlações e esgotadas todas as probabilidades reais ou imaginárias, sobre vulnerabilidades ou.... e, por fim, sobre todas as possíveis situações de segurança. Ou não, salvo melhor juízo[^1].

### Versões suportadas

Neste momento, considere apenas a última versão como suportada.
Os scripts são entregues "como estão", sem qualquer tipo de garantia.

| Versão        | Suportada          |
|:-------------- |:------------------ |
| master         | :white_check_mark: |
| other commits  | :x:                |

### Encontrei um bug, e agora?

**Não abra um PR nem issue!**

Sim, isso exige um /facepalm enorme, pois a vulnerabilidade é exposta já de cara.

Então considere enviar um email diretamente para: [**seguranca arroba jmarcelino ponto com ponto br**](mailto:seguranca@jmarcelino.com.br).

Que nosso time de atendimento (no momento apenas Id, Ego e Superego na labuta) lidará com a sua solicitação.

[^1]: Leia (ou não) o diálogo completo do Pinóquio com o Encantado neste link: <https://en.wikiquote.org/wiki/Shrek_the_Third#Dialogue>
