RED="\e[31m"
CYAN="\e[36m"
WHITE="\e[97m"
TAB="              "

echo -e "${RED} == STEP 1 == ${CYAN}Clonando aplicação 'frontend' ${WHITE}"
echo
git clone https://github.com/systemmk/frontend.git
cd frontend

echo -e "${CYAN}${TAB}Realizando checkout para develop ${WHITE}"
git checkout develop
echo -e "${CYAN}${TAB}Instalando dependencias ${WHITE}"
npm i
cd ..

echo
echo -e "${RED} == STEP 2 == ${CYAN}Clonando aplicação 'migrations' ${WHITE}"
echo
git clone https://github.com/systemmk/migrations.git
cd migrations

echo -e "${CYAN}${TAB}Realizando checkout para develop ${WHITE}"
git checkout develop
echo -e "${CYAN}${TAB}Instalando dependencias ${WHITE}"
npm i
cd ..

echo
echo -e "${RED} == STEP 3 == ${CYAN}Clonando aplicação 'scripts' ${WHITE}"
echo
git clone https://github.com/systemmk/scripts.git

echo
echo -e "${RED} == STEP 4 == ${CYAN}Clonando aplicação 'seed-user' ${WHITE}"
echo
git clone https://github.com/systemmk/seed-user.git
cd seed-user

echo -e "${CYAN}${TAB}Instalando dependencias ${WHITE}"
npm i
echo -e "${CYAN}${TAB}Executando seed de usuários ${WHITE}"
npm start