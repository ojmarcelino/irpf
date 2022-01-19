# IRPF e Docker: Executar o programa do DIRPF em Docker

Permite executar o programa de Declaração do Imposto de Renda de Pessoa Física [(DIRPF)](https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf), da Receita Federal do Governo Brasileiro, em um ambiente Docker.

Minha intenção foi criar uma forma de executar o programa IRPF da RF usando Docker, também disponível em [ojmarcelino/IRPFeDocker](https://cloud.docker.com/u/ojmarcelino/repository/docker/ojmarcelino/IRPFeDocker). Baseado fortemente nos ~~devaneios cognitivos~~ fontes do colega [@aureliojargas](https://github.com/aureliojargas), cito:

> Instalar o Java? Não, obrigado.

Caso ainda não saiba o que é [IRPF](https://bfy.tw/SLFQ), clique [aqui](https://bfy.tw/SLFQ) para maiores informações.

## Como usar

### runtime.sh

Curto e grosso, como um leão o faria (_*direto na jugular*_), abra um terminal ou linha de comando, e selecione uma opção

| Método    | Comando                                                                                           |
|:----------|:--------------------------------------------------------------------------------------------------|
| **curl**  | `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ojmarcelino/IRPFeDocker/master/runtime.sh)"` |
| **wget**  | `sh -c "$(wget -O- https://raw.githubusercontent.com/ojmarcelino/IRPFeDocker/master/tools/runtime.sh)"`   |
| **fetch** | `sh -c "$(fetch -o - https://raw.githubusercontent.com/ojmarcelino/IRPFeDocker/master/tools/runtime.sh)"` |

A imagem do IRPFeDocker está hospedada no [Docker Hub](https://hub.docker.com/r/ojmar/IRPFeDocker/), e para utilizar, basta executar o script '''runtime.sh'''. E só.

### docker-compose.yml

De longe o mais simples de usar, baixe este repositório e execute o [comando docker-compose up](https://docs.docker.com/compose/start/).

`docker-compose up --build`

### Inspeção manual

É considerada uma boa prática uma inspeção de segurança na execução de scripts de projetos em repositórios que você não controla. Você pode baixar o script de execução primeiro, e depois de inspecionar o código, constatar que não não só não há nenhuma vulnerabilidade, como foram seguidas boas práticas de segurança para a criação deste repositório.

    curl -L -o runtime.sh https://github.com/ojmarcelino/IRPFeDocker/raw/2019/runtime.sh
    chmod +x runtime.sh
    ./runtime.sh

Caso precise rodar uma versão mais antiga do programa, informe o ano como argumento, com base na lista de versões disponíveis abaixo.

Links oficiais utilizados [Página oficial da Receita Federal](https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf)

Links já apontando para as últimas versões disponibilizadas

[2021](https://downloadirpf.receita.fazenda.gov.br/irpf/2021/irpf/arquivos/IRPF2021-1.9.zip)

[2020](https://downloadirpf.receita.fazenda.gov.br/irpf/2020/irpf/arquivos/IRPF2020-2.2.zip)

[2019](https://downloadirpf.receita.fazenda.gov.br/irpf/2019/irpf/arquivos/IRPF2019-1.7.zip)

[2018](https://downloadirpf.receita.fazenda.gov.br/irpf/2018/irpf/arquivos/IRPF2018-1.7.zip)

[2017](https://downloadirpf.receita.fazenda.gov.br/irpf/2017/irpf/arquivos/IRPF2017-1.4.zip)

[2016](https://downloadirpf.receita.fazenda.gov.br/irpf/2016/IRPF2016-1.4.zip)

    ./IRPFeDocker.sh 2018

## Como reconstruir a imagem

Caso queira reconstruir a imagem em sua máquina, clone este repositório e faça o build local da imagem antes de rodá-la:

    git clone https://github.com/ojmarcelino/IRPFeDocker.git
    cd IRPFeDocker
    ./build.sh
    ./runtime.sh

## Detalhes

- Estou assumindo que você roda o docker sem precisar de `sudo`. Se não for o caso, bom, tem opção de rodar como root, que nem de longe é recomendado, ou procure a documentação para usar docker com usuário comum (não root).

- Você sabe que os certificados desses sites do governo é uma novela, né? Por isso precisa da opção `--no-check-certificate` ao baixar o programa (vide `Dockerfile`) :(

- Cada ano possui uma branch neste repositório (note que não tem a branch `master`). A cada commit novo, a imagem Docker é regerada automaticamente pelo Docker Hub, que já coloca a tag do ano, e no caso de ser a branch do ano corrente, também coloca a tag `latest`.

- A cada ano novo que vira: crie a branch nova, atualize as regras de build automático no Docker Hub, atualize a URL do arquivo ZIP no Dockerfile.

## Contribuições

Sua ajuda é muito bem-vinda! Se virar o ano e eu não atualizar a imagem, ou se você tem uma sugestão de melhoria, mande seu Pull Request.
