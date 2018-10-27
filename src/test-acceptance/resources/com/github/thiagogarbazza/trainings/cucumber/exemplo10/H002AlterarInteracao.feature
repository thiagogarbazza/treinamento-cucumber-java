# language: pt

Funcionalidade: Alterar interações para o sistema em desenvolvimento.

  Contexto:
    Dado que as datas abaixo são feriados:
      | data       | feriado | descrição do feriado                   |
      | 12/10/2018 | Sim     | Dia das crianças / Padroeira do Brasil |
      | 02/11/2018 | Sim     | Dia de finados                         |
      | 15/11/2018 | Sim     | Dia da proclamação da republica        |
      | 08/12/2018 | Sim     | Aniversário de Belo Horizonte          |
    E que os sistemas abaixo estão cadastrados:
      | id | Sigla | Nome                    | Situação |
      | 1  | EDD   | Editor de documentos    | Ativo    |
      | 2  | SDN   | Sistema de notificações | Inativo  |
    E que as interações abaixo estão cadastrados:
      | id | Sistema | Data início | Data fim   | Nome       |
      | 1  | SDN     | 22/10/2018  | 26/10/2018 | Spring 001 |
      | 2  | EDD     | 15/10/2018  | 19/10/2018 | Spring 001 |
      | 3  | EDD     | 22/10/2018  | 26/10/2018 | Spring 02  |

  Cenário: 01. Não permitir que um usuário não autorizado execute a ação.
    Dado que o usuário "Zoraide Silva" esta logado no sistema.
    E solicita alteração da interação "Sprint 02" do sistema "EDD".
    E informou a data de início "22/10/2018".
    E informou a data de fim "26/10/2018".
    E informou o nome da interação "Sprint 002".
    Quando clicar no botão salvar.
    Então o sistema responde que "Usuário não autorizado.".

  Cenário: 02. A data de início é de preenchimento obrigatório.
    Dado que o usuário "Thiago Garbazza" esta logado no sistema.
    E solicita alteração da interação "Sprint 02" do sistema "EDD".
    E informou a data de início "".
    E informou a data de fim "26/10/2018".
    E informou o nome da interação "Sprint 002".
    Quando clicar no botão salvar.
    Então o sistema responde que "A data início deve ser informada.".

  Cenário: 03. A data de início deve ser um dia útil.
    Dado que o usuário "Thiago Garbazza" esta logado no sistema.
    E solicita alteração da interação "Sprint 02" do sistema "EDD".
    E informou a data de início "12/10/2018".
    E informou a data de fim "26/10/2018".
    E informou o nome da interação "Sprint 002".
    Quando clicar no botão salvar.
    Então o sistema responde que "A data início deve ser dia útil.".

  Cenário: 04. A data de fim é de preenchimento obrigatório.
    Dado que o usuário "Thiago Garbazza" esta logado no sistema.
    E solicita alteração da interação "Sprint 02" do sistema "EDD".
    E informou a data de início "22/10/2018".
    E informou a data de fim "26/10/2018".
    E informou o nome da interação "Sprint 002".
    Quando clicar no botão salvar.
    Então o sistema responde que "A data fim deve ser informada.".

  Cenário: 05. A data de fim  deve ser um dia útil.
    Dado que o usuário "Thiago Garbazza" esta logado no sistema.
    E solicita alteração da interação "Sprint 02" do sistema "EDD".
    E informou a data de início "22/10/2018".
    E informou a data de fim "02/11/2018".
    E informou o nome da interação "Sprint 002".
    Quando clicar no botão salvar.
    Então o sistema responde que "A data fim deve ser dia útil.".

  Cenário: 06. O nome da interação é de preenchimento obrigatório.
    Dado que o usuário "Thiago Garbazza" esta logado no sistema.
    E solicita alteração da interação "Sprint 02" do sistema "EDD".
    E informou a data de início "22/10/2018".
    E informou a data de fim "26/10/2018".
    E informou o nome da interação "".
    Quando clicar no botão salvar.
    Então o sistema responde que "O nome deve ser informado.".

  Cenário: 07. O nome da interação deve ser único por sistema.
    Dado que o usuário "Thiago Garbazza" esta logado no sistema..
    E solicita alteração da interação "Sprint 02" do sistema "EDD".
    E informou a data de início "22/10/2018".
    E informou a data de fim "26/10/2018".
    E informou o nome da interação "Sprint 001".
    Quando clicar no botão salvar.
    Então o sistema responde que "O nome deve ser único para o sistema.".

  Cenário: 08. Realizar uma alteração com sucesso.
    Dado que o usuário "Thiago Garbazza" esta logado no sistema..
    E solicita alteração da interação "Sprint 02" do sistema "EDD".
    E informou a data de início "22/10/2018".
    E informou a data de fim "26/10/2018".
    E informou o nome da interação "Sprint 002".
    Quando clicar no botão salvar.
    Então o sistema responde que "Interação alterada com sucesso.".
