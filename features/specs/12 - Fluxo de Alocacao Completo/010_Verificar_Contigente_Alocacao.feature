#language: pt

Funcionalidade: Verifica Contingente Solicitado - Terceirizado

    @logout
    @verificar_contigente_alocacao_missao
    @Fluxo_Sistema_Completo
    Esquema do Cenario: Solicitação de Alocação Mobilização - Terceirizado.
    
    # Aba - Dados da Solicitação:
        Dado que estou logado no sistema com o usuário 'altair.acn' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalidade de Inclusão de Alocação
        E realizo as definições seguintes: Tipo de Solicitação 'Mobilização', Número de Inquérito Policial '1232019', Tipo de Serviço 'Comum',
        E Tipo de Operação 'BASE GISE/SP - OPERAÇÃO TESTE', Unidade do Inquérito Policial 'ACADEMIA NACIONAL DE POLICIA - ANP/DGP/PF',
        E Data Inicio '' com a data do dia atual por default, Data Término '', Duração em dias '5',
        E Área de Atuação 'ADMINISTRAÇÃO E LOGÍSTICA', Tipo da Missão 'Apoio Administrativo',
        E Destino 'Nacional', UF 'Amazonas' e Cidade 'Manaus' ou País 'Cuba' e Cidade 'HAVANA',
        E Custo das Diárias 'Será pago por R' como 'ACADEMIA NACIONAL DE POLICIA - ANP/DGP/PF' e o Ressarcimento como 'POLICIA FEDERAL - PF',
        E Custo das Passagens 'Será pago por R' como 'COORDENACAO DE ADMINISTRACAO - COAD/DLOG/PF' e o Ressarcimento como 'POLICIA FEDERAL - PF',
        E após realizar a definição dos dados da solicitação, realizo o preenchimento dos seguintes campos:
                    | Local_Apresentacao          | Local de Apresentação - Automação         |
                    | Descricao                   | Descrição - Automação                     |
                    | Dados_Conhecidos_Restricoes | Dados Conhecidos / Restrições - Automação |
                    | Recomendacoes               | Recomendações - Automação                 |
                    | Codigo_Siorg                | 65512                                     |
                    | Centro_de_Custo             | Centro de Custo - Automação               |
                    | Armamento                   | Armamento - Automação                     |
                    | Telecomunicacao             | Telecomunicação - Automação               |
                    | Vestuario                   | Vestuário - Automação                     |
                    | Outros                      | Outros - Automação                        |
        Quando acesso a Aba - Definir de Contingênte. 
    
    # Aba - Definir Contingênte (Por Cargo):
    
        E Realizo as definições seguintes: Tipo de Contingente 'Por Cargo', Cargos: <cargo1>, <cargo2>,
        E Efetivo Próprio '0', Efetivo Solicitado '6' com a opção de aceitação de alternativa 'marcada' para o primeiro cargo,
        E Efetivo Próprio '0', Efetivo Solicitado '6' com a opção de aceitação de alternativa 'desmarcada' para o segundo cargo,
        E Perfil Necessário 'Perfil Necessário - Automação', Autoridade 'JOSE OTACILIO DELLA PACE ALVES', Informações 'Informações - Automação',
        E Necessidade de viaturas de outras Unidades 'Sim', Justificativa de Transporte 'Justificativa de Transporte - Automação',
        E Horário de Apresentação '07:00',
        E Mais de cinco integrantes para o mesmo evento? 'Sim', Possivel Adiar Missao Servico? 'Sim',
        E Justifico caso haja a necessidade de mobilização de servidores de outras unidades 'Necessidade de mobilização de servidores - Automação',
        E Justifico caso a mobilização no prazo menor que quinze dias 'Mobilização no prazo menor que 15 dias - Automação',
        E Justifico caso necessite de justificativa para passagem aérea no prazo menor que dez dias 'Passagem aérea no prazo menor que 10 dias - Automação',
        Então Realizo o envio da alocação e sou direcionado para a tela de Consulta de Alocação.
        Dado visualizo a alocacao gerada "numero_alocacao_gerada.text"
        Então visualizo os cargos solicitados.

        Exemplos:
                | cargo1                           | cargo2                       |
                |"AGENTE DE POLICIA FEDERAL"       |"DELEGADO DE POLICIA FEDERAL" |
                |"AGENTE FEDERAL DE EXECUÇÃO PENAL"|"ESCRIVAO DE POLICIA FEDERAL"|
                |"PAPILOSCOPISTA POLICIAL FEDERAL" |"PERITO CRIMINAL FEDERAL"    |


    @logout
    @verificar_contigente_alocacao_servico
    @Fluxo_Sistema_Completo
    Esquema do Cenario: Solicitação de Alocação Serviço - Terceirizado.
    
    # Aba - Dados da Solicitação:
        Dado que estou logado no sistema com o usuário 'altair.acn' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalidade de Inclusão de Alocação
        E realizo as definições seguintes: Tipo de Solicitação 'Serviço', Tipo de Serviço 'Comum',
        E Tipo de Operação 'BASE GISE/SP - OPERAÇÃO TESTE',
        E Data Inicio '' com a data do dia atual por default, Data Término '', Duração em dias '5',
        E Área de Atuação 'ADMINISTRAÇÃO E LOGÍSTICA', Tipo da Missão 'Apoio Administrativo',
        E Destino 'Nacional', UF 'Amazonas' e Cidade 'Manaus' ou País 'Cuba' e Cidade 'HAVANA',
        E Custo das Diárias 'Será pago por R' como 'ACADEMIA NACIONAL DE POLICIA - ANP/DGP/PF' e o Ressarcimento como 'POLICIA FEDERAL - PF',
        E Custo das Passagens 'Será pago por R' como 'COORDENACAO DE ADMINISTRACAO - COAD/DLOG/PF' e o Ressarcimento como 'POLICIA FEDERAL - PF',
        E após realizar a definição dos dados da solicitação, realizo o preenchimento dos seguintes campos:
                    | Local_Apresentacao          | Local de Apresentação - Automação         |
                    | Descricao                   | Descrição - Automação                     |
                    | Dados_Conhecidos_Restricoes | Dados Conhecidos / Restrições - Automação |
                    | Recomendacoes               | Recomendações - Automação                 |
                    | Codigo_Siorg                | 65512                                     |
                    | Centro_de_Custo             | Centro de Custo - Automação               |
                    | Telecomunicacao             | Telecomunicação - Automação               |
                    | Vestuario                   | Vestuário - Automação                     |
                    | Outros                      | Outros - Automação                        |
        Quando acesso a Aba - Definir de Contingênte. 
    
    # Aba - Definir Contingênte (Por Cargo):
    
        E Realizo as definições seguintes: Tipo de Contingente 'Por Cargo', Cargos: <cargo1>, <cargo2>,
        E Efetivo Próprio '0', Efetivo Solicitado '1' com a opção de aceitação de alternativa 'marcada' para o primeiro cargo,
        E Efetivo Próprio '0', Efetivo Solicitado '1' com a opção de aceitação de alternativa 'desmarcada' para o segundo cargo,
        E Perfil Necessário 'Perfil Necessário - Automação', Autoridade 'JOSE OTACILIO DELLA PACE ALVES', Informações 'Informações - Automação',
        E Necessidade de viaturas de outras Unidades 'Sim', Justificativa de Transporte 'Justificativa de Transporte - Automação',
        E Horário de Apresentação '07:00',
        E Mais de cinco integrantes para o mesmo evento? 'Sim', Possivel Adiar Missao Servico? 'Sim',
        E Justifico caso haja a necessidade de mobilização de servidores de outras unidades 'Necessidade de mobilização de servidores - Automação',
        E Justifico caso a mobilização no prazo menor que quinze dias 'Mobilização no prazo menor que 15 dias - Automação',
        E Justifico caso necessite de justificativa para passagem aérea no prazo menor que dez dias 'Passagem aérea no prazo menor que 10 dias - Automação',
        Então Realizo o envio da alocação e sou direcionado para a tela de Consulta de Alocação.
        Dado visualizo a alocacao gerada "numero_alocacao_gerada.text"
        Então visualizo os cargos solicitados. 

        Exemplos:
                | cargo1                                   | cargo2                         |
                |'ADMIN EGP'                               |'ADMINISTRADOR'                 |
                |'ADVOGADO DA UNIAO'                       |'ADMINISTRADOR'                 |
                |'AGENTE CINEFOTOGRAFIA E MICROFILMAGEM'   |'AGENTE ADMINISTRATIVO'         |
                |'AGENTE DE TELECOMUNICAÇÃO E ELETRICIDADE'|'ANALISTA DE SISTEMAS'          |
                |'ARQUITETO'                               |'ARQUIVISTA'                    |
                |'ARTIFICE'                                |'ASSISTENTE ADMINISTRATIVO'     |
                |'ASSISTENTE DE ADMINISTRAÇÃO'             |'AUXILIAR ADMINISTRATIVO'       |
                |'ASSISTENTE SOCIAL'                       |'AUXILIAR DE ENFERMAGEM'        |
                |'AUXILIAR DE SERVICOS GERAIS'             |'BIBLIOTECARIO'                 |
                |'AUXILIAR OPERACIONAL SERVICOS DIVERSOS'  |'CONTADOR'                      |
                |'ENFERMEIRO'                              |'ENGENHEIRO'                    |
                |'ENGENHEIRO DE PESCA'                     |'ENGENHEIRO ELETRICO'           |
                |'ESCRITURARIO'                            |'ESTATISTICO'                   |
                |'ESPECIALISTA EM POLITICAS PUBLICAS E GESTAO GOVERNAMENTAL'|'FARMACEUTICO' |
                |'MEDICO VETERINARIO'                      |'MEDICO'                        |
                |'MOTORISTA OFICIAL'                       |'ODONTOLOGO'                    |
                |'NUTRICIONISTA'                           |'PSICOLOGO'                     |
                |'TECNICO EM ASSUNTOS EDUCACIONAIS'        |'SERVIDOR EM DISPONIBILIDADE'   |



#@verificar_contigente
#    Cenario: De acordo com a alocação gerada, realizo a Verificação Do Contigente Mobilizado.
        
#        Dado que estou logado no sistema com o usuário 'costa.rcc' e senha 'ctidpf'
#        E acesso a funcionalidade de Aprovação de Solicitação de Alocação pela AD,
#        E visualizo a alocação gerada e Pendente de Aprovação pelo AD "numero_alocacao_gerada.text",
#        Então visualizo os cargos solicitados.

