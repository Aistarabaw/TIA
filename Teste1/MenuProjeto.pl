:- set_prolog_flag(encoding, utf8).
:- encoding(utf8).

menu :-
    repeat,
    limpar_consola,
    write('--------------------------------------------------------------'), nl,
    write('|          Tecnologias de Inteligência Artificial           |'), nl,
    write('|                         LEGSI                              |'), nl,
    write('--------------------------------------------------------------'), nl, nl,
    write('[Menu]'), nl, nl,
    write('[1] - Paciente do sexo feminino'), nl,
    write('[2] - Paciente do sexo masculino'), nl, nl,
    write('Selecione o algarismo referente à sua escolha: '),
    read(Opcao),
    executar(Opcao),
    Opcao == 3, !.

executar(1) :-
    write('Você escolheu a Opção 1.'), nl, fail.
executar(2) :-
    write('Você escolheu a Opção 2.'), nl, fail.
executar(3) :-
    write('Saindo...'), nl.
executar(_) :-
    write('Opção inválida, tente novamente.'), nl, fail.


limpar_consola :- 
    forall(between(1, 50, _), nl).
    