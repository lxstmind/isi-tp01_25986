# Projeto de Integração de Sistemas de Informação

Este projeto tem como objetivo processar dados de artistas musicais com mais de 75 unidades certificadas, realizando transformações nos dados, agregações e calculos.

## Descrição do Processo

1. **Leitura dos Dados**
   - O processo inicia com a leitura de um ficheiro CSV contendo informações sobre artistas, como ID, nome, unidades certificadas, certificações de ouro, platina, multi-platina, diamante.
   
2. **Transformações nos Dados**
   - **Tirar Espaços**: Remove espaços em branco desnecessários dos campos.
   - **Retira Caracteres Especiais**: Remove caracteres especiais dos nomes dos artistas para garantir a consistência dos dados.
   - **Modifica Valores Nulos**: Substitui valores nulos em determinados campos por valores padrão.
   - **Apenas Letra Inicial Maiúscula**: Normaliza o nome dos artistas com a primeira letra em maiúsculo.
   - **Artist ID em Maiúsculo**: Normaliza o ID dos artistas para maiúsculas.
   
3. **Filtragem de Artistas**
   - Apenas artistas com mais de 75 unidades certificadas são selecionados para continuar o processo.

4. **Integração com a API MusicBrainz**
   - Realiza consultas à API do MusicBrainz para obter mais informações detalhadas sobre cada artista.
   - Campos como o país de origem e a data de início são preenchidos a partir dos dados recuperados via API.

5. **Cálculos e Agregações**
   - **Taxa de Platinas em Relação a Unidades Certificadas**: Calcula a relação de platina com base nas unidades certificadas.
   - **Soma de Certificações (Ouro + Diamante)**: Cria um campo agregando o número de certificados de ouro e diamante de cada artista.

6. **Saída**
   - O resultado final é exportado em vários formatos, incluindo **XML**, **JSON**, e **HTML** para relatórios.
   - O HTML gerado exibe uma tabela com os dados formatados, e o layout é estilizado com CSS embutido, incluindo títulos em negrito e em cinza claro.

## Estrutura de ficheiros

- `Transformation1.ktr`: ficheiro de transformação do Pentaho Data Integration (PDI) que contém todos os steps e transformações realizados.
- `prev.html`: Ficheiro HTML gerado contendo o relatório final formatado dos artistas.
- `prev.xml`: Relatório XML gerado com os dados processados.
- `prev.json`: Relatório JSON gerado com os dados processados.
- `README.md`: Documentação do projeto.

## Dependências

- **Pentaho Data Integration (PDI)**: Software usado para a criação e execução de ETL (Extração, Transformação e Carga) de dados.
- **MusicBrainz API**: API usada para buscar dados adicionais sobre os artistas.

## Como Executar

1. Abrir o ficheiro `Transformation1.ktr` no **Pentaho Data Integration (Spoon)**.
2. Verificar se o caminho do ficheiro CSV de entrada está correto e configurado.
3. Executar a transformação para processar os dados e gerar os ficheiros de saída (HTML, XML, JSON).
4. Visualize o relatório gerado no ficheiro `prev.html` ou qualquer um dos outros formatos.

## Desenvolvimento de Jobs

### Passos Principais:
1. **Start**: Inicia o processo.
2. **Remover prev.html**: Exclui o ficheiro `prev.html` existente antes de gerar um novo.
   - Caminho do ficheiro: `C:\Users\lxstm\OneDrive - Instituto Politécnico do Cávado e do Ave\LESI\3º ano\S1\Integração de Sistemas de Informação\prev.html`
   
3. **GET artistas**: Executa a transformação que obtém artistas.
   - Caminho da transformação: `C:\Users\lxstm\OneDrive - Instituto Politécnico do Cávado e do Ave\LESI\3º ano\S1\Integração de Sistemas de Informação\GET Previsões.ktr`

4. **Verificar se prev.xml existe**: Verifica se o ficheiro `prev.xml` está presente no caminho:
   - Caminho do ficheiro: `C:\Users\lxstm\OneDrive - Instituto Politécnico do Cávado e do Ave\LESI\3º ano\S1\Integração de Sistemas de Informação\prev.xml`

5. **XSL Transformation**: Realiza uma transformação XSL sobre o ficheiro XML e gera o ficheiro HTML.
   - Caminho dos ficheiros:
     - XML: `C:\Users\lxstm\OneDrive - Instituto Politécnico do Cávado e do Ave\LESI\3º ano\S1\Integração de Sistemas de Informação\prev.xml`
     - XSL: `C:\Users\lxstm\OneDrive - Instituto Politécnico do Cávado e do Ave\LESI\3º ano\S1\Integração de Sistemas de Informação\prev.xsl`
     - Output HTML: `C:\Users\lxstm\OneDrive - Instituto Politécnico do Cávado e do Ave\LESI\3º ano\S1\Integração de Sistemas de Informação\prev.html`

6. **htmlAsAmbient**: Gera um ambiente HTML baseado nos resultados da transformação.

7. **Envio de E-mail**: Envia o relatório gerado por e-mail com o conteúdo da transformação.
   - **Destinatário**: `jmxrcelo17@gmail.com`
   - **Remetente**: `a25986@alunos.ipca.pt`

## Autor

- **João Marcelo Oliveira Ferreira**