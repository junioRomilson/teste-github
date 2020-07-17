#language: pt

Funcionalidade: Inclusão de Ordem de Mobilizacao ou Servico
    #@Smoke_AD_AS
    Contexto: Possuir usuário ativo no corporativo e está logado na aplicação.
        Dado que estou logado no sistema com o usuário 'renato.rcs' e senha 'ctidpf'
        E seleciono a unidade de exercicio

    
    
    @logout
    @Fluxo_incluir_oms_interestadual
    @Fluxo_aprovar_oms_ad_interestadual
    @Fluxo_aprovar_oms_as_interestadual
    @Fluxo_Sistema_Completo

    Cenario: Ordem de Mobilizacao ou Servico Interestadual com custo e mais de Cinco Integrantes.
    
        Quando eu realizo as seguintes definições de Tipo de Ordem 'Missão Policial', Missão 'Comum', Tipo de Destino 'Interestadual', Número do Inquérito '01572019',
        E Unidade do Inquérito Policial 'ACADEMIA NACIONAL DE POLICIA - ANP/DGP/PF', Área de Atuação 'ADMINISTRAÇÃO E LOGÍSTICA',
        E Tipo de Missão 'Apoio Administrativo', Data Início '', Duração em Dias '2', UF 'Distrito Federal', Cidade 'Brasília', 
        E Local de Apresentação 'Local - AUT', Missão 'Missão - AUT', Órgãos Parceiros 'não', Dados Conhecidos - Restrições 'Dados - AUT',
        E Recomendações 'Recomendações - AUT', Unidade Gestora 'unidades gestoras', Unidade 'POLICIA FEDERAL - PF', Ressarcimento 'sem ressarcimento', Tipo de Transporte 'Terrestre',
        E Subtipo Transporte 'PF', Observação 'Observação - AUT', Autoridade 'ANA TELMA RIBEIRO SILVA', Armamento 'Armamento - AUT', Cod. Centro de custo '70324', Centro de Custo 'Custo', 
        E Telecomunicação 'Telecomunicação - AUT', Vestuário 'Vestuário - AUT', Outros 'Outros - AUT', Anexar Arquivo 'não', Descrição do Arquivo 'Anexo - AUT',
        E Definir Integrantes "integrante1", Chefe de Equipe 'sim', Nome Responsável 'Integrante_responsável',
        E Interesse 'Local', Unidade Interessada - Fixo, Data - Fixa, Horário '0800', Mais de Cinco Integrantes 'não', Possivel Adiar Viagem 'sim',
        Então eu visualizo a mensagem de sucesso: 'Registro salvo com sucesso.'.