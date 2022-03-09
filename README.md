# Execute o programa da DIRPF com Docker

Faça sua Declaração do Imposto de Renda de Pessoa Física [(DIRPF)](https://www.gov.br/receitafederal/pt-br/centrais-de-conteudo/download/pgd/dirpf) usando Docker e sem instalar Java.

## Como usar

Em uma linha de comando e como usuário comum, execute usando sua opção preferida:

**curl**

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ojmarcelino/irpf/master/runtime.sh)"
```

**fetch**

```
sh -c "$(fetch -o - https://raw.githubusercontent.com/ojmarcelino/irpf/master/runtime.sh)"
```

**wget**

```
sh -c "$(wget -O- https://raw.githubusercontent.com/ojmarcelino/irpf/master/runtime.sh)"
```

Para cada ano fiscal, há imagem com tag diferente. Consulte <https://hub.docker.com/r/ojmarcelino/irpf>.

## Contribuições

Gostaria de ajudar? Ótimo! Manda um PR que todas as contribuições são bem-vindas!
Consulte [CONTRIBUTING.md](https://github.com/ojmarcelino/irpf/blob/main/CONTRIBUTING.md).

## Política de segurança

Conforme descrito em [SECURITY.md](https://github.com/ojmarcelino/irpf/blob/main/SECURITY.md).

## Tópicos avançados

Para aqueles que gostam de detalhamento, confira o [ADVANCED.md](https://github.com/ojmarcelino/irpf/blob/main/ADVANCED.md)

## Licença de uso

Usando licença GPL3-3.0, mais detalhes no [LICENSE.md](https://github.com/ojmarcelino/irpf/blob/main/LICENSE.md)
