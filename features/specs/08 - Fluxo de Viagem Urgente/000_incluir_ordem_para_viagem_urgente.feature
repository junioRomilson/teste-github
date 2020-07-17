#language: pt

Funcionalidade: Inclusão de Ordem de Mobilizacao ou Servico - Viagem Urgente.

    Contexto: Possuir usuário ativo no corporativo e está logado na aplicação.
        Dado que estou logado no sistema com o usuário 'alineabdala.ama' e senha 'ctidpf'
        E seleciono a unidade de exercicio

@logout
@Fluxo_viagem_urgente_completo
@Fluxo_Sistema_Completo

    Cenario: Ordem de Mobilização ou Serviço com solicitação de viagem urgente.
    
        Quando eu realizo as seguintes definições de Tipo de Ordem 'Missão Policial', Missão 'Comum', Tipo de Destino 'Interestadual', Número do Inquérito '01572019',
        E Unidade do Inquérito Policial 'ACADEMIA NACIONAL DE POLICIA - ANP/DGP/PF', Área de Atuação 'ADMINISTRAÇÃO E LOGÍSTICA',
        E Tipo de Missão 'Apoio Administrativo', Data Início '', Duração em Dias '7', UF 'Distrito', Cidade 'Brasília', 
        E Local de Apresentação 'Local - AUT', Missão 'Missão - AUT', Órgãos Parceiros 'não', Dados Conhecidos - Restrições 'Dados - AUT',
        E Recomendações 'Recomendações - AUT', Unidade Gestora 'unidades gestoras', Unidade 'POLICIA FEDERAL - PF', Ressarcimento 'sem ressarcimento', Tipo de Transporte 'Aéreo',
        E Subtipo Transporte 'Comercial', Observação 'Observação - AUT', Unidade Gestora 'unidade gestora', Entidade 'POLICIA FEDERAL - PF', Ressarcimento 'sem o ressarcimento', 
        E Autoridade Determinante 'RODRIGO DE CAMPOS COSTA', Armamento 'Armamento - AUT', Cod. Centro de custo '70324', Centro de Custo 'Custo', 
        E Telecomunicação 'Telecomunicação - AUT', Vestuário 'Vestuário - AUT', Outros 'Outros - AUT', Anexar Arquivo 'não', Descrição do Arquivo 'Anexo - AUT',
        E defino a data para "solicitar viagem urgente" com prazo superior a "15" dias,
        E Definir Integrantes "integrante1", Chefe de Equipe 'sim', Nome Responsável 'Integrante_responsável',
        E Interesse 'Unidade Central', Unidade Interessada - Fixo, Data - Fixa, Horário '0800', Mais de Cinco Integrantes 'não', Possivel Adiar Viagem 'sim',
        Então eu visualizo a mensagem de sucesso: 'Registro salvo com sucesso.'.