#!/bin/bash

#Guardas os Logs

 # Imprime o cabeçalho "IBBC 24"
         echo "┌──────────────────────────────────────────────┐"
    sleep 0.1
    	 echo "│  _____  ____   ____    _____   ___   _  _    │"
    sleep 0.1
   	 echo "│ |_   _||  _ \ |  _ \  / ____| |__ \ | || |   │"
    sleep 0.1
         echo "│   | |  | |_) || |_) || |         ) || || |_  │"
    sleep 0.1
         echo "│   | |  |  _ < |  _ < | |        / / |__   _| │"
    sleep 0.1
    	 echo "│  _| |_ | |_) || |_) || |____   / /_    | |   │"
    sleep 0.1
         echo "│ |_____||____/ |____/  \_____| |____|   |_|   │"
    sleep 0.1
         echo "└──────────────────────────────────────────────┘"
    sleep 0.1

echo ""


echo "Bem-vind@ ao meu script. Introduz o nome do teu projeto:"
sleep 1
echo ""
echo "!!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO"
echo ""
echo "								   O NOME QUE INTRODUZIRES IRÁ CONFIGURAR O NOME DA TUA DIRETORIA"
echo ""
echo "								   O NOME DA DIRETORIA NÃO PODE CONTER ESPAÇOS"
echo ""
echo "								   O NOME DA DIRETORIA NÃO PODE ESTAR EM BRANCO"
echo ""
echo "								   O NOME DA DIRETORIA NÃO PODE JÁ EXISTIR NA DIRETORIA DE TRABALHO"
echo ""
echo "!!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO"
echo ""
echo "Nota: Ler o ficheiro README antes de utilizar o script."
sleep 1
echo ""

# Verificar se o nome está vazio / contém espaços / já existe com o mesmo nome
while true; do
    echo "Nome da diretoria:"
    read name
    echo ""
	if [[ "$name" =~ \  ]]; then
   	 echo "Erro: O nome não pode conter espaços. Tente novamente."
echo ""
	elif [[ -z "$name" ]]; then
   	 echo "Erro: O nome não pode estar vazio. Tente novamente."
echo ""
	elif [[ -d "$name" ]]; then
     	 echo "Erro: Já existe uma diretoria com esse nome. Tente novamente."
echo ""  
 else
   	break
fi
done

echo "A tua diretoria irá ter o nome de --> $name <--."
sleep 1
echo ""

# CRIACAO DAS DIRETORIAS
echo "A criar diretoria"
echo ""
sleep 0.1

#CODIGO PARA CRIAR DIRETORIA MAIN RAW E RESULTADO
mkdir -p $name/raw $name/raw/FastQC $name/raw/MultiQC $name/resultado $name/resultado/Trimmomatic $name/resultado/FastQC $name/resultado/MultiQC

echo "Diretoria --> $name <-- criada com sucesso"
echo ""
sleep 0.1
echo "Subdiretoria --> raw <-- criada com sucesso"
echo ""
sleep 0.1
echo "Subdiretoria --> resultado <-- criada com sucesso"
sleep 2
echo ""

# WORKFLOW
echo "Este script apresenta o seguinte workflow:"
sleep 1
echo ""

echo "--> Conda"
sleep 0.5
echo ""

echo "--> FastQC e multiqc"
sleep 0.5
echo ""

echo "--> Trimmomatic"
sleep 0.5
echo ""

echo "--> FastQC e multiqc"
sleep 2
echo ""

echo "!!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO"
echo ""
echo "							Irá ser necessário interação com o usuário no programa Trimmomatic para definir parâmetros."
echo ""
echo "!!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO !!! !!! ATENÇÃO"
echo ""
sleep 1

echo "PRESSIONE ENTER PARA CONTINUAR..."
read

clear

echo '   _____ ____  _   _ _____            ______ _   ___      _______ _____   ____  _   _ __  __ ______ _   _ _______ '
sleep 0.1
echo '  / ____/ __ \| \ | |  __ \   /\     |  ____| \ | \ \    / /_   _|  __ \ / __ \| \ | |  \/  |  ____| \ | |__   __|'
sleep 0.1
echo ' | |   | |  | |  \| | |  | | /  \    | |__  |  \| |\ \  / /  | | | |__) | |  | |  \| | \  / | |__  |  \| |  | |   '
sleep 0.1
echo ' | |   | |  | | . ` | |  | |/ /\ \   |  __| | . ` | \ \/ /   | | |  _  /| |  | | . ` | |\/| |  __| | . ` |  | |   '
sleep 0.1
echo ' | |___| |__| | |\  | |__| / ____ \  | |____| |\  |  \  /   _| |_| | \ \| |__| | |\  | |  | | |____| |\  |  | |   '
sleep 0.2
echo '  \_____\____/|_| \_|_____/_/    \_\ |______|_| \_|   \/   |_____|_|  \_\\____/|_| \_|_|  |_|______|_| \_|  |_|   '
echo ""
echo ""
echo "@ADDITIONAL HELP HERE : https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html"
echo ""

#CÓDIGO PARA CONDA_ENVIRONMENT

source /home/fc64503/miniconda3/etc/profile.d/conda.sh
activate_cmd="conda activate tools_qc"
eval $activate_cmd
echo ""
echo "Ambiente Conda 'tools_qc' ativado!"
sleep 2
clear


echo "  ______        _    ____   _____ "
sleep 0.1
echo " |  ____|      | |  / __ \ / ____|"
sleep 0.1
echo " | |__ __ _ ___| |_| |  | | |     "
sleep 0.1
echo " |  __/ _\` / __| __| |  | | |     "
sleep 0.1
echo " | | | (_| \__ \ |_| |__| | |____ "
sleep 0.1
echo " |_|  \__,_|___/\__|\___\\_\\______|"
sleep 0.2
echo""
echo""
echo "@ADDITIONAl HELP HERE : https://github.com/s-andrews/FastQC"
echo""

#CÓDIGO PARA FASTQC

txt_file="/home/fc64503/ROOM/Exame/samples.txt"

IFS=$'\t'

while read -r sample treatment file1 file2; do

    full_path_file1="/home/fc64503/ROOM/Exame/$file1"
    full_path_file2="/home/fc64503/ROOM/Exame/$file2"
    
    echo "A verificar ficheiro: $full_path_file1"
    if [[ -f "$full_path_file1" ]]; then
        echo "Amostra encontrada: $full_path_file1"
        fastqc "$full_path_file1" -o /home/fc64503/ROOM/$name/raw/FastQC
    fi

    echo "A verificar ficheiro: $full_path_file2"
    if [[ -f "$full_path_file2" ]]; then
        echo "Amostra encontrada: $full_path_file2"
        fastqc "$full_path_file2" -o /home/fc64503/ROOM/$name/raw/FastQC
    fi
done < "$txt_file"
echo""
echo "Processo concluido! (relatório FastQC em $name/raw/FastQC)"
sleep 4
clear

echo "                  _ _   _            "
sleep 0.1
echo "                 | | | (_)           "
sleep 0.1
echo "  _ __ ___  _   _| | |_ _  __ _  ___ "
sleep 0.1
echo " | '_ \` _ \| | | | | __| |/ _\` |/ __|"
sleep 0.1
echo " | | | | | | |_| | | |_| | (_| | (__ "
sleep 0.1
echo " |_| |_| |_|\__,_|_|\__|_|\__, |\___|"
sleep 0.1
echo "                             | |     "
sleep 0.1
echo "                             |_|     "
sleep 0.2
echo ""
echo ""
echo "@ADDITIONAL HELP HERE : https://docs.seqera.io/"
echo ""
#CÓDIGO PARA MULTI QC

multiqc /home/fc64503/ROOM/$name/raw/FastQC/*fastqc.zip -o /home/fc64503/ROOM/$name/raw/MultiQC

echo "Processo concluido! (relatório MultiQC em $name/raw/MultiQC)"
sleep 5
clear



echo "  _______   _                                           _   _      "
sleep 0.1
echo " |__   __| (_)                                         | | (_)     "
sleep 0.1
echo "    | |_ __ _ _ __ ___  _ __ ___   ___  _ __ ___   __ _| |_ _  ___ "
sleep 0.1
echo "    | | '__| | '_ \` _ \| '_ \` _ \ / _ \| '_ \` _ \ / _\` | __| |/ __|"
sleep 0.1
echo "    | | |  | | | | | | | | | | | | (_) | | | | | | (_| | |_| | (__ "
sleep 0.1
echo "    |_|_|  |_|_| |_| |_|_| |_| |_|\___/|_| |_| |_|\__,_|\__|_|\___|"
sleep 0.2
echo ""
echo ""
echo "@ADDITIONAL HELP HERE : https://github.com/timflutre/trimmomatic"
echo ""

#CÓDIGO PARA TRIMMOMATIC

while true; do
echo "Escolha o tipo de dados: 'PE' para Paired-End ou 'SE' para Single-End: "
read tipo
        if [[ "$tipo" =~ \  ]]; then
         echo "Erro: O tipo de dados não pode conter espaços. Tente novamente."
echo ""
        elif [[ -z "$tipo" ]]; then
         echo "Erro: O tipo de dados não pode estar vazio. Tente novamente."
echo ""
        elif [[ "$tipo" != "SE" && "$tipo" != "PE" ]]; then
        echo "Tipo de input inválido. Por favor, escolha SE ou PE."
 else
        break
fi
done
echo "O valor Phred foi definido para: $ps"
echo ""

while true; do
echo "Escolha o valor de Phred score que deseja usar para codificação das leituras (padrão: 33):"
read ps
        if [[ "$ps" =~ \  ]]; then
         echo "Erro: O valor não pode conter espaços. Tente novamente."
echo ""
        elif [[ -z "$ps" ]]; then
         echo "Erro: O número não pode estar vazio. Tente novamente."
echo ""
 else
        break
fi
done
echo "O valor Phred foi definido para: $ps"
echo ""
while true; do
echo "Escolha o valor de LEADING mínimo para cortar as bases de baixa qualidade no início da leitura (padrão: 3):"
    read leading
        if [[ "$leading" =~ \  ]]; then
         echo "Erro: O valor não pode conter espaços. Tente novamente."
echo ""
        elif [[ -z "$leading" ]]; then
         echo "Erro: O número não pode estar vazio. Tente novamente."
echo ""
 else
        break
fi
done
echo "O valor de LEADING foi definido para: $leading"
echo ""
while true; do
echo "Escolha o valor de TRAILING mínimo para cortar as bases de baixa qualidade no final da leitura (padrão: 3):"
    read trailing
        if [[ "$trailing" =~ \  ]]; then
         echo "Erro: O valor não pode conter espaços. Tente novamente."
echo ""
        elif [[ -z "$trailing" ]]; then
         echo "Erro: O número não pode estar vazio. Tente novamente."
echo ""
 else
        break
fi
done
echo "O valor de TRAILING foi definido para: $trailing"
echo ""
while true; do
echo "Escolha o tamanho da janela SLIDINGWINDOW para verificar a qualidade média (padrão: 4):"
    read sw
        if [[ "$sw" =~ \  ]]; then
         echo "Erro: O valor não pode conter espaços. Tente novamente."
echo ""
        elif [[ -z "$sw" ]]; then
         echo "Erro: O número não pode estar vazio. Tente novamente."
echo ""
 else
        break
fi
done
echo "O valor de SLIDINGWINDOW foi definido para: $sw"
echo ""
while true; do
echo "Escolha o valor de Phred score para a janela deslizante SLIDINGWINDOWQUALITY (padrão: 15): "
    read swq
        if [[ "$swq" =~ \  ]]; then
         echo "Erro: O valor não pode conter espaços. Tente novamente."
echo ""
        elif [[ -z "$swq" ]]; then
         echo "Erro: O número não pode estar vazio. Tente novamente."
echo ""
 else
        break
fi
done
echo "O valor de SLIDINGWINDOWQUALITY foi definido para: $swq"
echo ""
while true; do
echo "Escolha o tamanho mínimo das leituras MINLEN após o corte (padrão: 36): "
    read minl
        if [[ "$minl" =~ \  ]]; then
         echo "Erro: O valor não pode conter espaços. Tente novamente."
echo ""
        elif [[ -z "$minl" ]]; then
         echo "Erro: O número não pode estar vazio. Tente novamente."
echo ""
 else
        break
fi
done
echo "O valor de MINLEN foi definido para: $minl"
echo ""
echo "O comando será executado com os seguintes parâmetros:"
echo "Phred: $ps, LEADING: $leading, TRAILING: $trailing, SLIDINGWINDOW: $sw, SLIDINGWINDOWQUALITY: $swq, MINLEN: $minl"
echo ""

#PARTE FUNCIONAL - LINHA DE CÓDIGO TRIMMOMATIC PE/SE

read -p "Deseja executar o Trimmomatic com essas configurações? [s/n]: " confirm
if [[ "$confirm" != "s" ]]; then
    echo "Operação cancelada."
    exit 0
fi

adapter_se="/home/fc64503/miniconda3/envs/tools_qc/share/trimmomatic-0.39-2/adapters/TruSeq3-SE.fa"
adapter_pe="/home/fc64503/miniconda3/envs/tools_qc/share/trimmomatic-0.39-2/adapters/TruSeq3-PE-2.fa"


#CASO SEJA PAIRED END

if [[ "$tipo" == "PE" ]]; then
    echo "Tipo Paired-End selecionado."

txt_file="/home/fc64503/ROOM/Exame/samples.txt"
output_dir="/home/fc64503/ROOM/$name/resultado/Trimmomatic"

prev_sample=""
prev_treatment=""
prev_file=""

IFS=$'\t'

while read -r sample treatment file; do
    if [[ -z "$prev_sample" ]]; then
	prev_sample="$sample"
        prev_treatment="$treatment"
        prev_file="$file"
    else
	file1="/home/fc64503/ROOM/Exame/$prev_file"
        file2="/home/fc64503/ROOM/Exame/$file"

if [[ -f "$file1" && -f "$file2" ]]; then
         echo ""  
	 echo "Irão ser Trimmadas as seguintes amostras: $prev_file e $file"
	 echo ""
sample_namePE=$(basename "$prev_file" ".fastq.gz")
            output_forward_paired="$output_dir/${sample_namePE}_R1_PAIRED.fastq.gz"
            output_forward_unpaired="$output_dir/${sample_namePE}_R1_UNPAIRED.fastq.gz"
            output_reverse_paired="$output_dir/${sample_namePE}_R2_PAIRED.fastq.gz"
            output_reverse_unpaired="$output_dir/${sample_namePE}_R2_UNPAIRED.fastq.gz"

trimmomatic PE -phred$ps "$file1" "$file2" \
                "$output_forward_paired" "$output_forward_unpaired" \
                "$output_reverse_paired" "$output_reverse_unpaired" \
                ILLUMINACLIP:$adapter_pe:2:30:10 LEADING:$leading TRAILING:$trailing SLIDINGWINDOW:$sw:$swq MINLEN:$minl \
		-summary /home/fc64503/ROOM/$name/resultado/Trimmomatic/trimPE_log.txt 
	echo ""
	echo "Processo concluido! (resultados trimmomatic em /$name/resultado/Trimmomatic)"
	echo ""
else
            echo "Erro: Não foram encontrada(s) amostra(s): $prev_file ou $file. Iremos prosseguir..."
        fi
	prev_sample=""
       	prev_treatment=""
        prev_file=""
    fi
done < "$txt_file"

#CASO SEJA SINGLE END

elif [[ "$tipo" == "SE" ]]; then
    echo "Modo Single-End selecionado."

    txt_file="/home/fc64503/ROOM/Exame/samples.txt"

    IFS=$'\t'
    while read -r sample treatment file; do

        full_path_file="/home/fc64503/ROOM/Exame/$file"

        if [[ -f "$full_path_file" ]]; then
            echo "A processar: $full_path_file"

            sample_nameSE=$(basename "$full_path_file" .fastq.gz)
            output="${sample_nameSE}_trimmed.fastq.gz"

            trimmomatic SE -phred"$ps" "$full_path_file" \
            "/home/fc64503/ROOM/$name/resultado/Trimmomatic/$output" \
            ILLUMINACLIP:$adapter_se:2:30:10 LEADING:$leading TRAILING:$trailing SLIDINGWINDOW:$sw:$swq MINLEN:$minl \
	    -summary /home/fc64503/ROOM/$name/resultado/Trimmomatic/trimSE_log.txt
else
            echo "Amostra não encontrada: $full_path_file"
        fi
    done < "$txt_file"
fi

echo "Processo concluído."
sleep 5
clear


echo "  ______        _    ____   _____ "
sleep 0.1
echo " |  ____|      | |  / __ \ / ____|"
sleep 0.1
echo " | |__ __ _ ___| |_| |  | | |     "
sleep 0.1
echo " |  __/ _\` / __| __| |  | | |     "
sleep 0.1
echo " | | | (_| \__ \ |_| |__| | |____ "
sleep 0.1
echo " |_|  \__,_|___/\__|\___\\_\\______|"
sleep 0.2
echo""
echo""
echo "@ADDITIONAl HELP HERE : https://github.com/s-andrews/FastQC"
#CÓDIGO PARA FASTQC 2

input_dir="/home/fc64503/ROOM/$name/resultado/Trimmomatic"

for file in "$input_dir"/*.fastq.gz; do
    if [[ -f "$file" ]]; then
        echo "A processar amostra: $file"
        fastqc "$file" -o /home/fc64503/ROOM/$name/resultado/FastQC
    else
        echo "Erro: não foram encontrada(s) amostra(s) em $input_dir_2"
    fi
done

echo "Processo concluido! (relatório FastQC em $name/resultado/FastQC"
sleep 5
clear

echo "                  _ _   _            "
sleep 0.1
echo "                 | | | (_)           "
sleep 0.1
echo "  _ __ ___  _   _| | |_ _  __ _  ___ "
sleep 0.1
echo " | '_ \` _ \| | | | | __| |/ _\` |/ __|"
sleep 0.1
echo " | | | | | | |_| | | |_| | (_| | (__ "
sleep 0.1
echo " |_| |_| |_|\__,_|_|\__|_|\__, |\___|"
sleep 0.1
echo "                             | |     "
sleep 0.1
echo "                             |_|     "
sleep 0.2
echo ""
echo ""
echo "@ADDITIONAL HELP HERE : https://docs.seqera.io/"
#CÓDIGO PARA MULTIQC 2

multiqc /home/fc64503/ROOM/$name/resultado/FastQC/*fastqc.zip -o /home/fc64503/ROOM/$name/resultado/MultiQC

echo "Processo concluido! (relatório MultiQC em $name/resultado/MultiQC)"
sleep5
clear



#END

echo " \`-:-.   ,-;\" \`-:-.   ,-;\" \`-:-.   ,-;\" \`-:-.   ,-;\""
sleep 0.1
echo "    \`=\`,'=/      \`=\`,'=/      \`=\`,'=/      \`=\`,'=/"
sleep 0.1
echo "      y==/         y==/         y==/         y==/"
sleep 0.1
echo "    ,=,-<=\`.     ,=,-<=\`.     ,=,-<=\`.     ,=,-<=\`."
sleep 0.1
echo ",-'-'   \`-=_,-'-'   \`-=_,-'-'   \`-=_,-'-'   \`-=_"
sleep 0.2
echo "                                      "
sleep 0.1
echo "                   ,--.              "
sleep 0.1
echo "    ,---,.       ,--.'|    ,---,     "
sleep 0.1
echo "  ,'  .' |   ,--,:  : |  .'  .' \`\\   "
sleep 0.1
echo " ,---.'   |,\`--.'\`|  ' :,---.'     \\  "
sleep 0.1
echo " |   |   .'|   :  :  | ||   |  .\`\\  | "
sleep 0.1
echo " :   :  |-,:   |   \\ | ::   : |  '  | "
sleep 0.1
echo " :   |  ;/||   : '  '; ||   ' '  ;  : "
sleep 0.1
echo " |   :   .''   ' ;.    ;'   | ;  .  | "
sleep 0.1
echo " |   |  |-,|   | | \\   ||   | :  |  ' "
sleep 0.1
echo " '   :  ;/|'   : |  ; .''   : | /  ;  "
sleep 0.1
echo " |   |    \\|   | \`\`--'  |   | '\` ,/   "
sleep 0.1
echo " |   :   .''   : |      ;   :  .'     "
sleep 0.1
echo " |   | ,'  ;   |.'      |   ,.'       "
sleep 0.1
echo " \`----'    '---'        '---'         "
sleep 0.1
echo "                                      "
sleep 0.2
echo " \`-:-.   ,-;\" \`-:-.   ,-;\" \`-:-.   ,-;\" \`-:-.   ,-;\""
sleep 0.1
echo "    \`=\`,'=/      \`=\`,'=/      \`=\`,'=/      \`=\`,'=/"
sleep 0.1
echo "      y==/         y==/         y==/         y==/"
sleep 0.1
echo "    ,=,-<=\`.     ,=,-<=\`.     ,=,-<=\`.     ,=,-<=\`."
sleep 0.1
echo ",-'-'   \`-=_,-'-'   \`-=_,-'-'   \`-=_,-'-'   \`-=_"
sleep 10



