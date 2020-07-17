#language: pt

    Funcionalidade: Inclusão de OMP/OS Comum - Aprovação AD AS e DG - Terceirizado.

    Contexto: Possuir usuário ativo no corporativo e está logado na aplicação.
        Dado que estou logado no sistema com o usuário 'alineabdala.ama' e senha 'ctidpf'
        E seleciono a unidade de exercicio

    @logout
    #@Smoke_Aprovar_AD_AS_DG_Terceirizado
    #@fluxo_completo_assessores_terceirizado

    @desmembrar_ordem_fluxo_completo_terceirizado
    @Fluxo_incluir_oms_terceirizado
    @Fluxo_aprovar_oms_ad_terceirizado
    @Fluxo_aprovar_oms_as_terceirizado
    @fluxo_aprovar_oms_assessor_terceirizado
    @Fluxo_completo_oms_terceirizado
    @Fluxo_Sistema_Completo

    Cenario: Manter Ordem de Missão Policial e Ordem de Serviço.
        
        Quando eu realizo as seguintes definições de Tipo de Ordem 'Missão Policial', Missão 'Comum', Tipo de Destino 'Interestadual', Número do Inquérito '01572019',
        E Unidade do Inquérito Policial 'ACADEMIA NACIONAL DE POLICIA - ANP/DGP/PF', Área de Atuação 'ADMINISTRAÇÃO E LOGÍSTICA',
        E Tipo de Missão 'Apoio Administrativo', Data Início '', Duração em Dias '2', UF 'Maranhão', Cidade 'Açailândia', 
        E Local de Apresentação 'Local - AUT', Missão 'Missão - AUT', Órgãos Parceiros 'não', Dados Conhecidos - Restrições 'Dados - AUT',
        E Recomendações 'Recomendações - AUT', Unidade Gestora 'unidades gestoras', Unidade 'POLICIA FEDERAL - PF', Ressarcimento 'sem ressarcimento', Tipo de Transporte 'Terrestre',
        E Subtipo Transporte 'PF', Observação 'Observação - AUT', Autoridade 'RODRIGO DE CAMPOS COSTA', Armamento 'Armamento - AUT', Cod. Centro de custo '70324', Centro de Custo 'Custo', 
        E Telecomunicação 'Telecomunicação - AUT', Vestuário 'Vestuário - AUT', Outros 'Outros - AUT', Anexar Arquivo 'não', Descrição do Arquivo 'Anexo - AUT',
        E Definir Integrantes "integrante1", Chefe de Equipe 'sim', Nome Responsável 'Integrante_responsável',
        E Interesse 'Local', Unidade Interessada - Fixo, Data - Fixa, Horário '0700', Mais de Cinco Integrantes 'sim', Possivel Adiar Viagem 'não',
        Então eu visualizo a mensagem de sucesso: 'Registro salvo com sucesso.'.