
# Trimmomatic Workflow Script

## Descrição do Projeto

Este projeto é um script automatizado para análise de qualidade e pré-processamento de dados de sequenciamento de DNA. Ele combina ferramentas como **FastQC**, **Trimmomatic** e **MultiQC** para realizar análises em ficheiros FASTQ de maneira organizada e eficiente.

O script opera dentro de uma estrutura de diretórios definida e automatiza as etapas principais, incluindo a análise de qualidade inicial, o corte de sequências de baixa qualidade ou contaminantes para além de gerar relatórios consolidados.

---

## Benefícios do Projeto

- **Automatização**: Simplifica a execução de tarefas repetitivas para grandes conjuntos de dados.
- **Organização**: Gera e mantém uma estrutura de diretórios consistente para os resultados.
- **Flexibilidade**: Permite ajustes personalizados nos parâmetros de cada ferramenta, como Trimmomatic, com interação direta do usuário.
- **Relatórios Consolidados**: Integra relatórios de qualidade usando MultiQC para fácil interpretação.

---

## Estrutura do Projeto

A estrutura principal do projeto é configurada assim que o script é executado:

```
Main Directory (ROOM)
└── Subdirectory (Exame)
    ├── samples.txt          # Lista de amostras e metadados
    ├── <arquivos .fastq.gz> # Dados de entrada
    └── Diretórios gerados:
        ├── raw/
        │   ├── FastQC/      # Relatórios FastQC pós-análise inicial
        │   └── MultiQC/     # Relatórios MultiQC consolidados
        └── resultado/
            ├── Trimmomatic/ # Arquivos FASTQ pós-corte e logs
            ├── FastQC/      # Relatórios FastQC pós-Trimmomatic
            └── MultiQC/     # Relatórios MultiQC finais
```

---

## Requisitos

1. **Ferramentas Necessárias**:
   - FastQC
   - Trimmomatic
   - MultiQC
2. **Conda Environment** (Recomendado):
   - O ambiente `tools_qc` deve estar ativado antes da execução do script caso tenha outro nome.

```bash
conda activate tools_qc
```

3. **Estrutura de Diretórios e Arquivos**:
   - O arquivo `samples.txt` deve ser colocado na subdiretoria `Exame` e preenchido corretamente:
     - 3 colunas separadas por tabulação:
       - Coluna 1: Índice (`Sample1`, `Sample2`, etc.)
       - Coluna 2: Identificador (`NOD`, etc.)
       - Coluna 3: Nome do arquivo FASTQ (`file_R1.fastq.gz`, `file_R2.fastq.gz`)
     - Para **Paired-End**, os arquivos forward e reverse devem ocupar posições consecutivas.

---

## Como Usar o Projeto

1. Clone ou copie o script para o diretório principal (e.g., `ROOM`):
   ```bash
   cp script.sh /caminho/para/ROOM/
   ```

2. Crie a subdiretoria `Exame` e insira os arquivos `samples.txt` e os arquivos FASTQ.

3. Execute o script:
   ```bash
   bash script.sh
   ```

4. Siga as instruções para:
   - Definir o nome do projeto.
   - Escolher os parâmetros para o Trimmomatic.
   - Acompanhar o processamento e gerar relatórios.

---

## Notas Importantes

- **Alteração de Caminhos**: Caso queira modificar a localização das entradas ou saídas, atualize os paths no script. 
- **Logs**: Durante a execução do Trimmomatic, um arquivo de resumo (e.g., `trimPE_log.txt` ou `trimSE_log.txt`) será gerado contendo estatísticas do corte.
- **Erros em Arquivos**: Verifique se os arquivos FASTQ estão no formato esperado e se `samples.txt` foi preenchido corretamente.

---

## Onde Obter Ajuda

- **FastQC**: [Documentação Oficial](https://github.com/s-andrews/FastQC)
- **Trimmomatic**: [Documentação Oficial](https://github.com/timflutre/trimmomatic)
- **MultiQC**: [Documentação Oficial](https://multiqc.info/)
- **Conda**: [Documentação Oficial](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html)

---

## Autor e Contatos

Este projeto foi desenvolvido por **Hugo Nicolau**, aluno do **Mestrado em Bioinformática e Biologia Computacional** da Faculdade de Ciências da Universidade de Lisboa.

- **E-mail**: hugonicolau2001@gmail.com
- **GitHub**: [https://github.com/hugonnicolau](https://github.com/hugonnicolau)

---

## Licença

Este projeto é de livre uso para fins académicos e educacionais. Para outros usos, por favor, entre em contato com o autor.
