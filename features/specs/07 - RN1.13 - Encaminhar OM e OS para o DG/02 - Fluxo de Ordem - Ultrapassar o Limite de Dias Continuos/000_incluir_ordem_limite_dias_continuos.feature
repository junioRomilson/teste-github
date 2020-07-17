#language: pt

Funcionalidade: Inclusão de Ordem de Mobilizacao ou Servico - Limite de Dias Continuos.

    Contexto: Possuir usuário ativo no corporativo e está logado na aplicação.
        Dado que estou logado no sistema com o usuário 'fabiana.fpe' e senha 'ctidpf'
        E seleciono a unidade de exercicio

    # RN1.13	Encaminhar OMP/OS para a DG
    # Caso a duração dias em missão/serviço do servidor ultrapassar o limite de dias contínuos (definidos por parametrização). 
    
@logout
@Tag_Regra_Fluxo_DG
@Limite_dias_continuos
@Fluxo_Limite_Dias_Continuos
@Fluxo_Sistema_Completo

    Cenario: Ordem de Mobilizacao ou Servico com limite de dias continuos.
    
        Quando eu realizo as seguintes definições de Tipo de Ordem 'Missão Policial', Missão 'Comum', Tipo de Destino 'Interestadual', Número do Inquérito '01572019',
        E Unidade do Inquérito Policial 'ACADEMIA NACIONAL DE POLICIA - ANP/DGP/PF', Área de Atuação 'ADMINISTRAÇÃO E LOGÍSTICA',
        E Tipo de Missão 'Apoio Administrativo', Data Início '', Duração em Dias '11', UF 'Distrito Federal', Cidade 'Brasília', 
        E Local de Apresentação 'Local - AUT', Missão 'Missão - AUT', Órgãos Parceiros 'não', Dados Conhecidos - Restrições 'Dados - AUT',
        E Recomendações 'Recomendações - AUT', Unidade Gestora 'unidades gestoras', Unidade 'POLICIA FEDERAL - PF', Ressarcimento 'sem ressarcimento', Tipo de Transporte 'Terrestre',
        E Subtipo Transporte 'PF', Observação 'Observação - AUT', Autoridade 'DANIEL VIANNA OTTONI DE SIQUEIRA', Armamento 'Armamento - AUT', Cod. Centro de custo '70324', Centro de Custo 'Custo', 
        E Telecomunicação 'Telecomunicação - AUT', Vestuário 'Vestuário - AUT', Outros 'Outros - AUT', Anexar Arquivo 'não', Descrição do Arquivo 'Anexo - AUT',
        E Definir Integrantes "integrante1", Chefe de Equipe 'sim', Nome Responsável 'Integrante_responsável',
        E Interesse 'Local', Unidade Interessada - Fixo, Data - Fixa, Horário '0800', Mais de Cinco Integrantes 'não', Possivel Adiar Viagem 'sim',
        E Justifico a necessidade de Deslocamento do Servidor para outra Unidade em um Periodo Superior ao definido 'Justificativa - Ultrapassar o Limite de Dias Continuos - Automação.'
        Então eu visualizo a mensagem de sucesso: 'Registro salvo com sucesso.'.