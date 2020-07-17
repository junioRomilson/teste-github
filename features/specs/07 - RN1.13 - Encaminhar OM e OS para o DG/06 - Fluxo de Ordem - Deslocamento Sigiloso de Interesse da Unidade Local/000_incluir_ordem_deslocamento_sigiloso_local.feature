#language: pt

Funcionalidade: Inclusão de Ordem de Mobilizacao ou Servico - Sigilosa e de Interesse da Unidade Local.

    Contexto: Possuir usuário ativo no corporativo e está logado na aplicação.
        Dado que estou logado no sistema com o usuário 'fabiana.fpe' e senha 'ctidpf'
        E seleciono a unidade de exercicio

    # RN1.13	Encaminhar OMP/OS para a DG
    # 6. Caso haja custo com diárias e/ou passagens, integrantes com diárias selecionadas ou solicitação de passagem aérea comercial e foi selecionada a opção interesse "Unidade Central".
    # b) Caso o sistema identifique que há deslocamento sigiloso, porém, o interesse é de Unidade “LOCAL”, assumirá o status de “Autorizada”, independentemente da validação de qualquer das condições.

@logout
@Tag_Regra_Fluxo_DG
@Deslocamento_Sigiloso_Unidade_Local
@Incluir_Ordem_Deslocamento_Sigiloso_Unidade_Local
@Fluxo_Sistema_Completo

    Cenario: Ordem de Mobilização ou Serviço Sigilosa e de Interesse da Unidade Local.
    
        Quando eu realizo as seguintes definições de Tipo de Ordem 'Missão Policial', Missão 'Sigiloso', Tipo de Destino 'Interestadual', Número do Inquérito '01572019',
        E Unidade do Inquérito Policial 'ACADEMIA NACIONAL DE POLICIA - ANP/DGP/PF', Área de Atuação 'ADMINISTRAÇÃO E LOGÍSTICA',
        E Tipo de Missão 'Apoio Administrativo', Data Início '', Duração em Dias '2', UF 'Distrito Federal', Cidade 'Brasília', 
        E Local de Apresentação 'Local - AUT', Missão 'Missão - AUT', Órgãos Parceiros 'não', Dados Conhecidos - Restrições 'Dados - AUT',
        E Recomendações 'Recomendações - AUT', Unidade Gestora 'unidades gestoras', Unidade 'POLICIA FEDERAL - PF', Ressarcimento 'sem ressarcimento', Tipo de Transporte 'Terrestre',
        E Subtipo Transporte 'PF', Observação 'Observação - AUT', Autoridade 'DANIEL VIANNA OTTONI DE SIQUEIRA', Armamento 'Armamento - AUT', Cod. Centro de custo '70324', Centro de Custo 'Custo', 
        E Telecomunicação 'Telecomunicação - AUT', Vestuário 'Vestuário - AUT', Outros 'Outros - AUT', Anexar Arquivo 'não', Descrição do Arquivo 'Anexo - AUT',
        E Definir Integrantes "integrante1", Chefe de Equipe 'sim', Nome Responsável 'Integrante_responsável',
        E Interesse 'Local', Unidade Interessada - Fixo, Data - Fixa, Horário '0800', Mais de Cinco Integrantes 'não', Possivel Adiar Viagem 'sim',
        Então eu visualizo a mensagem de sucesso: 'Registro salvo com sucesso.'.