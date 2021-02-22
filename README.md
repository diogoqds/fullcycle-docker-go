# Desafio Docker com Go

Desafio feito pela [code education](https://code.education/).

## Descrição do Desafio

Desafio Go \
Esse desafio é muito empolgante principalmente se você nunca trabalhou com a linguagem Go!
Você terá que publicar uma imagem no docker hub. Quando executarmos:

docker run <seu-user>/codeeducation

Temos que ter o seguinte resultado: Code.education Rocks!

Se você perceber, essa imagem apenas realiza um print da mensagem como resultado final, logo, vale a pena dar uma conferida no próprio site da Go Lang para aprender como fazer um "olá mundo".

Lembrando que a Go Lang possui imagens oficiais prontas, vale a pena consultar o Docker Hub.

3. A imagem de nosso projeto Go precisa ter menos de 2MB =)

Dica: No vídeo de introdução sobre o Docker quando falamos sobre o sistema de arquivos em camadas, apresento uma imagem "raiz", talvez seja uma boa utilizá-la.

Divirta-se

## Como rodar

Com o docker devidamente instalado rode o comando no terminal:

_docker run diogoqds/codeeducation_

## Como verificar o tamanho da imagem?

Rode o comando no terminal:

_docker images | grep codeeducation_

Essa imagem teve o tamanho de 1.39mb

## Como foi o processo de criar a imagem?

No docker existe o conceito chamado de [_multistage build_](https://docs.docker.com/develop/develop-images/multistage-build/) que serve para otimizar suas imagens, resumindo você cria o projeto em uma imagem docker maior e com mais recursos e depois copia para uma imagem menor (logo possui menos recursos).
