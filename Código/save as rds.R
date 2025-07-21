# LEITURA DOS DADOS DA POF 2017-2018 - R

library(readr)

#####CONSUMO ALIMENTAR

# Definir larguras e nomes das colunas 
w_CA <- c(2,4,1,9,2,1,2,2,2,4,2,7,3,
          2,1,1,1,1,1,1,1,1,1,1,1,1,
          1,1,2,2,7,9,6,14,14,14,14,
          14,14,14,14,14,14,14,14,
          14,14,14,14,14,14,14,14,
          14,14,14,14,14,14,14,14,
          14,14,15,10,15,1)
col_CA <- c("UF", "ESTRATO_POF", "TIPO_SITUACAO_REG", "COD_UPA", "NUM_DOM", "NUM_UC",
            "COD_INFOR,MANTE", "QUADRO", "SEQ", "V9005", "V9007", "V9001", "V9015",
            "V9016", "V9017", "V9018", "V9019", "V9020", "V9021", "V9022", "V9023",
            "V9024", "V9025", "V9026", "V9027", "V9028", "V9029", "V9030",
            "COD_UNIDADE_MEDIDA_FINAL", "COD_PREPARACAO_FINAL", "GRAMATURA1",
            "QTD", "COD_TBCA", "ENERGIA_KCAL", "ENERGIA_KJ", "PTN", "CHOTOT", "FIBRA",
            "LIP", "COLEST", "AGSAT", "AGMONO", "AGPOLI", "AGTRANS", "CALCIO", "FERRO",
            "SODIO", "MAGNESIO", "FOSFORO", "POTASSIO", "COBRE", "ZINCO", "VITA_RAE",
            "TIAMINA", "RIBOFLAVINA", "NIACINA", "PIRIDOXAMINA", "COBALAMINA", "VITD",
            "VITE", "VITC", "FOLATO", "PESO", "PESO_FINAL", "RENDA_TOTAL", "DIA_SEMANA",
            "DIA_ATIPICO")

# Ler o arquivo com read_fwf 
CONSUMO_ALIMENTAR <- read_fwf(
  file = "./Dados/CONSUMO_ALIMENTAR.txt",
  col_positions = fwf_widths(w_CA, col_CA),
  na = c(" "),
  col_types = cols(.default = col_character()),  # Lê tudo como texto inicialmente
)

# Armazena no HD local arquivo serializado para leituras futuras
saveRDS(CONSUMO_ALIMENTAR,"./rds/CONSUMO_ALIMENTAR.rds")

#####CADERNETA COLETIVA

# Definir larguras e nomes das colunas 
w_CC <- c(2,4,1,9,2,1,2,3,7,2,10,12,10,1,2,14,14,10,
          9,4,5,9,5)
col_CC <- c("UF", "ESTRATO_POF", "TIPO_SITUACAO_REG",
            "COD_UPA", "NUM_DOM", "NUM_UC", "QUADRO",
            "SEQ", "V9001", "V9002", "V8000", "DEFLATOR",
            "V8000_DEFLA", "COD_IMPUT_VALOR",
            "FATOR_ANUALIZACAO", "PESO", "PESO_FINAL",
            "RENDA_TOTAL",
            "V9005", "V9007", "V9009", "QTD_FINAL","V9004")

# Ler o arquivo com read_fwf 
CARDENETA_COLETIVA <- read_fwf(
  file = "./Dados/CADERNETA_COLETIVA.txt",
  col_positions = fwf_widths(w_CC, col_CC),
  na = c(" "),
  col_types = cols(.default = col_character()),  # Lê tudo como texto inicialmente
)

# Armazena no HD local arquivo serializado para leituras futuras
saveRDS(CARDENETA_COLETIVA,"./rds/CADERNETA_COLETIVA.rds")

#####DESPESA COLETIVA

# Definir larguras e nomes das colunas 
w_DC <- c(2,4,1,9,2,1,2,2,7,2,4,10,2,2,1
          ,10,1,12,10,10,1,1,2,14,14,10,5)
col_DC <- c("UF", "ESTRATO_POF", "TIPO_SITUACAO_REG",
            "COD_UPA", "NUM_DOM", "NUM_UC", "QUADRO",
            "SEQ", "V9001", "V9002", "V9005", "V8000",
            "V9010", "V9011", "V9012", "V1904",
            "V1905", "DEFLATOR", "V8000_DEFLA",
            "V1904_DEFLA", "COD_IMPUT_VALOR",
            "COD_IMPUT_QUANTIDADE", "FATOR_ANUALIZACAO",
            "PESO", "PESO_FINAL", "RENDA_TOTAL","V9004")

# Ler o arquivo com read_fwf 
DESPESA_COLETIVA <- read_fwf(
  file = "./Dados/DESPESA_COLETIVA.txt",
  col_positions = fwf_widths(w_DC, col_DC),
  na = c(" "),
  col_types = cols(.default = col_character()),  # Lê tudo como texto inicialmente
)

# Armazena no HD local arquivo serializado para leituras futuras
saveRDS(DESPESA_COLETIVA,"./rds/DESPESA_COLETIVA.rds")

#####MORADOR

# Definir larguras e nomes das colunas 
w_M <- c(2,4,1,9,2,1,2,2,1,2,2,4,3,1,1,
         1,1,1,2,1,2,1,1,1,1,1,1,1,1,1,
         1,1,1,1,1,2,1,1,2,1,1,2,1,1,1,
         2,1,2,14,14,10,1,20,20,20,20)
col_M <- c("UF", "ESTRATO_POF", "TIPO_SITUACAO_REG", 
           "COD_UPA", "NUM_DOM", "NUM_UC", "COD_INFORMANTE",
           "V0306", "V0401", "V04021", "V04022", "V04023",
           "V0403", "V0404", "V0405", "V0406", "V0407",
           "V0408", "V0409", "V0410", "V0411", "V0412",
           "V0413", "V0414", "V0415", "V0416", 
           "V041711", "V041712", "V041721", "V041722",
           "V041731", "V041732", "V041741", "V041742",
           "V0418", "V0419", "V0420", "V0421", "V0422",
           "V0423", "V0424", "V0425", "V0426", "V0427",
           "V0428", "V0429", "V0430", "ANOS_ESTUDO",
           "PESO", "PESO_FINAL", "RENDA_TOTAL",
           "NIVEL_INSTRUCAO", "RENDA_DISP_PC","RENDA_MONET_PC",    
           "RENDA_NAO_MONET_PC","DEDUCAO_PC")

# Ler o arquivo com read_fwf 
MORADOR <- read_fwf(
  file = "./Dados/MORADOR.txt",
  col_positions = fwf_widths(w_M, col_M),
  na = c(" "),
  col_types = cols(.default = col_character()),  # Lê tudo como texto inicialmente
)

# Armazena no HD local arquivo serializado para leituras futuras
saveRDS(MORADOR,"./rds/MORADOR.rds")

# REGISTRO - ALUGUEL ESTIMADO

# Definir larguras e nomes das colunas 
w_AE <- c(2,4,1,9,2,1,2,7,2,10,2,2,12,10,1,2,14,14,10)
col_AE <- c("UF", "ESTRATO_POF", "TIPO_SITUACAO_REG",
            "COD_UPA", "NUM_DOM", "NUM_UC", "QUADRO",
            "V9001", "V9002", "V8000", "V9010", "V9011",
            "DEFLATOR", "V8000_DEFLA", "COD_IMPUT_VALOR",
            "FATOR_ANUALIZACAO", "PESO", "PESO_FINAL",
            "RENDA_TOTAL")

# Ler o arquivo com read_fwf 
ALUGUEL_ESTIMADO <- read_fwf(
  file = "./Dados/ALUGUEL_ESTIMADO.txt",
  col_positions = fwf_widths(w_AE, col_AE),
  na = c(" "),
  col_types = cols(.default = col_character()),  # Lê tudo como texto inicialmente
)

# Armazena no HD local arquivo serializado para leituras futuras
saveRDS(ALUGUEL_ESTIMADO,"./rds/ALUGUEL_ESTIMADO.rds")

# REGISTRO - DESPESA INDIVIDUAL

# Definir larguras e nomes das colunas 
w_DI <- c(2,4,1,9,2,1,2,2,2,7,2,10,2
          ,2,1,1,1,12,10,1,2,14,14,10,5)
col_DI <- c("UF", "ESTRATO_POF", "TIPO_SITUACAO_REG",
            "COD_UPA", "NUM_DOM", "NUM_UC",
            "COD_INFORMANTE", "QUADRO", "SEQ", "V9001",
            "V9002", "V8000", "V9010", "V9011", "V9012",
            "V4104", "V4105", "DEFLATOR", "V8000_DEFLA",
            "COD_IMPUT_VALOR", "FATOR_ANUALIZACAO",
            "PESO", "PESO_FINAL", "RENDA_TOTAL","V9004")

# Ler o arquivo com read_fwf 
DESPESA_INDIVIDUAL <- read_fwf(
  file = "./Dados/DESPESA_INDIVIDUAL.txt",
  col_positions = fwf_widths(w_DI, col_DI),
  na = c(" "),
  col_types = cols(.default = col_character()),  # Lê tudo como texto inicialmente
)

# Armazena no HD local arquivo serializado para leituras futuras
saveRDS(DESPESA_INDIVIDUAL,"./rds/DESPESA_INDIVIDUAL.rds")



