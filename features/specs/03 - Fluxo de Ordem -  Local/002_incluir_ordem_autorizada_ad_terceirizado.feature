#language: pt

    Funcionalidade: Manter Ordem de Mobilização e Ordem de Serviço - Incluir - Terceirizado.
    
    
    Contexto: Possuir usuário ativo no corporativo e está logado na aplicação.
        Dado que estou logado no sistema com o usuário 'alineabdala.ama' e senha 'ctidpf'
        E seleciono a unidade de exercicio

    @logout
    @Fluxo_gerar_ordem_local_terceirizado
    @Fluxo_aprovar_ordem_local_terceirizado_ad
    @fluxo_de_ordem_e_relatorio_local_terceirizado
    @prorrogar_ordem_local_terceirizado
    @prorrogar_ordem_local_terceirizado_aprovar_ad
    @Fluxo_Sistema_Completo

    Cenario: Incluir Ordem Local Terceirizada - Sem Custo

        Quando eu realizo as seguintes definições de Tipo de Ordem 'Missão Policial', Missão 'Sigilosa', Tipo de Destino 'Local', Número do Inquérito '01572019',
        E Unidade do Inquérito Policial 'ACADEMIA NACIONAL DE POLICIA - ANP/DGP/PF', Área de Atuação 'ADMINISTRAÇÃO E LOGÍSTICA',
        E Tipo de Missão 'Apoio Administrativo', Data Início '', Duração em Dias '1', UF 'São Paulo', Cidade 'Altair', 
        E Local de Apresentação 'Local - AUT', Missão 'Descrição - AUT', Órgãos Parceiros 'não', Dados Conhecidos - Restrições 'Restrições - AUT',
        E informações referente Recomendações 'Recomendações - AUT', Tipo de Transporte 'Terrestre', Subtipo de Transporte 'PF', Observação  'Observações - AUT',
        E Autoridade Determinante 'RODRIGO DE CAMPOS COSTA', dados em referência a Equipamento: Armamento 'Armamaento - AUT', Telecomunicação 'Telecomunicações - AUT', Vestuário 'Vestuário - AUT',
        E Outros 'Outros - AUT', anexar arquivo 'não', descrição do arquivo 'Anexar Arquivo - AUT', Definir Integrantes 'CARLOS ALBERTO ARANTES ALVES',
        Entao vejo a seguinte mensagem 'Registro salvo com sucesso.'