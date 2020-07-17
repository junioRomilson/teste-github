#language: pt

Funcionalidade: Inclusão de Ordem de Mobilizacao ou Servico - Internacional.

    Contexto: Possuir usuário ativo no corporativo e está logado na aplicação.
        Dado que estou logado no sistema com o usuário 'fabiana.fpe' e senha 'ctidpf'
        E seleciono a unidade de exercicio

    # RN1.13	Encaminhar OMP/OS para a DG
    # 6. Caso haja custo com diárias e/ou passagens, integrantes com diárias selecionadas ou solicitação de passagem aérea comercial e foi selecionada a opção interesse "Unidade Central".
    # c) Caso o sistema identifique que o "Tipo de Destino" é "Internacional", assumirá o status “Autorizada”, independentemente da validação de qualquer das condições.

@logout
@Tag_Regra_Fluxo_DG
@Incluir_Ordem_Destino_Internacional
@Fluxo_Ordem_Destino_Internacional_ad
@Fluxo_Ordem_Destino_Internacional_as
@Fluxo_Ordem_Destino_Internacional_validar
@Fluxo_Deslocamento_Internacional
@Fluxo_Sistema_Completo

    Cenario: Ordem de Mobilizacao ou Servico Internacional.
    
        Quando eu realizo as seguintes definições de Tipo de Ordem 'Missão Policial', Missão 'Comum', Tipo de Destino 'Internacional', Número do Inquérito '01572019',
        E Unidade do Inquérito Policial 'ACADEMIA NACIONAL DE POLICIA - ANP/DGP/PF', Área de Atuação 'ADMINISTRAÇÃO E LOGÍSTICA',
        E Tipo de Missão 'Apoio Administrativo', Data Início '', Duração em Dias '2', UF 'Não se Aplica', Cidade 'Toronto', 
        E Local de Apresentação 'Local - AUT', Missão 'Missão - AUT', Órgãos Parceiros 'não', Dados Conhecidos - Restrições 'Dados - AUT',
        E Recomendações 'Recomendações - AUT', Unidade Gestora 'unidades gestoras', Unidade 'POLICIA FEDERAL - PF', Ressarcimento 'sem ressarcimento', Tipo de Transporte 'Terrestre',
        E Subtipo Transporte 'PF', Observação 'Observação - AUT', Autoridade 'DANIEL VIANNA OTTONI DE SIQUEIRA', Armamento 'Armamento - AUT', Cod. Centro de custo '70324', Centro de Custo 'Custo', 
        E Telecomunicação 'Telecomunicação - AUT', Vestuário 'Vestuário - AUT', Outros 'Outros - AUT', Anexar Arquivo 'não', Descrição do Arquivo 'Anexo - AUT',
        E Definir Integrantes "integrante1", Chefe de Equipe 'sim', Nome Responsável 'Integrante_responsável',
        E Interesse 'Local', Unidade Interessada - Fixo, Data - Fixa, Horário '0800', Mais de Cinco Integrantes 'não', Possivel Adiar Viagem 'sim',
        E Preencher o campo Valor da Diária para Ordem de Mobilizacao ou Serviço Internacional '250,00',
        Então eu visualizo a mensagem de sucesso: 'Registro salvo com sucesso.'.