# Desafio Full Cycle Go

## Descrição do Desafio

Esse desafio é muito empolgante principalmente se você nunca trabalhou com a linguagem Go!
Você terá que publicar uma imagem no docker hub. Quando executarmos:

docker run <seu-user>/fullcycle

Temos que ter o seguinte resultado: Full Cycle Rocks!!

Se você perceber, essa imagem apenas realiza um print da mensagem como resultado final, logo, vale a pena dar uma conferida no próprio site da Go Lang para aprender como fazer um "olá mundo".

Lembrando que a Go Lang possui imagens oficiais prontas, vale a pena consultar o Docker Hub.

3) A imagem de nosso projeto Go precisa ter menos de 2MB =)

Dica: No vídeo de introdução sobre o Docker quando falamos sobre o sistema de arquivos em camadas, apresento uma imagem "raiz", talvez seja uma boa utilizá-la.

Suba o projeto em um repositório Git remoto e coloque o link da imagem que subiu no Docker Hub.

Compartilhe o link do repositório do Git remoto para corrigirmos seu projeto.

Divirta-se!

## Instruções

1. **Escolha uma imagem base**: A Go Lang possui imagens oficiais prontas no Docker Hub. Para este desafio usaremos a imagem com a tag golang:alpine que pode ser encontrada em [Golang - Docker Official Image](https://hub.docker.com/_/golang/tags)

2. **Tamanho da imagem**: Como o desafio é criar uma imagem de projeto Go que tenha **menos de 2MB**. Para atingir esse objetivo, utilizaremos o Multi-Stage Builds com Alpine Linux como base no primeiro estágio e o `scratch` no segundo estágio.

## Uso do Alpine e Multi-Stage Builds

O Alpine Linux é uma distribuição Linux leve e minimalista, ideal para imagens Docker. Ele oferece um sistema de arquivos compacto e eficiente, o que ajuda a reduzir o tamanho das imagens.

Os *multi-stage builds* permitem dividir a construção da imagem em duas etapas:

1. **Estágio de Compilação (Alpine)**: Nesse estágio, compilaremos o código Go e geraremos um executável. Utilizaremos o Alpine Linux como base para essa etapa.
2. **Estágio Final (`scratch`)**: Criaremos uma imagem mínima, sem sistema operacional subjacente, utilizando o `scratch`. Copiaremos apenas o executável gerado na etapa anterior. Isso nos permitirá ter uma imagem final enxuta e eficiente.

## Compartilhe os Links

- Link do repositório Git remoto: [GitHub - freitaslucas75/fullcycle-go](https://github.com/lucasfreitass10/FullCycle3DockerGolang)
- Link da imagem no Docker Hub: [freitaslucas75/fullcycle](https://hub.docker.com/r/freitaslucas75/fullcycle)
