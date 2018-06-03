# Pinocchio

## Como executar  
### Instalando o SWI  
  http://www.swi-prolog.org/build/unix.html
    
    sudo apt-add-repository ppa:swi-prolog/stable  
    sudo apt-get update  
    sudo apt-get install swi-prolog  
    
### Rodando o código
    
    git clone https://github.com/Andrelpoj/Pinocchio
    cd Pinocchio/
    swipl

  Para iniciar os dados:

    ?- consult('pinocchio.pl').
  
  Para carregar as regras relacionadas ao tratamento de tempo:
    
    ?- consult('pinocchio_time.pl').

## Integrantes do Grupo
    - Alysson Gomes
    - André Luiz Pereira
    - Gustavo Pergola
    - João Pedro Sá Medeiros
    - Nicholas Quintella
