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

    ?- consult('pinocchio_puppet.pl').
  
  Para carregar os fatos que tornam o pinocchio um menino de verdade:
    
    ?- consult('pinocchio_real_boy.pl').

## Integrantes do Grupo
    - André Luiz Pereira
    - João Pedro Sá Medeiros
    - Alysson Gomes
    - Gustavo Pergola
    - Nicholas Quintella