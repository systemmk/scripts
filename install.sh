RED="\e[31m"
CYAN="\e[36m"
WHITE="\e[97m"
TAB="              "

echo -e "${RED} == STEP 1 == ${CYAN}Clonando aplicação 'frontend' 💻${WHITE}"
git clone https://github.com/systemmk/frontend.git
cd frontend

echo
echo -e "${CYAN}Realizando checkout para develop ${WHITE}"
git checkout develop
echo
echo -e "${CYAN}Instalando dependencias ${WHITE}"
npm i
cd ..

echo
echo -e "${RED} == STEP 2 == ${CYAN}Clonando aplicação 'migrations' 🎲${WHITE}"
git clone https://github.com/systemmk/migrations.git
cd migrations

echo
echo -e "${CYAN}Realizando checkout para develop ${WHITE}"
git checkout develop
echo
echo -e "${CYAN}Instalando dependencias ${WHITE}"
npm i
cd ..

echo
echo -e "${RED} == STEP 3 == ${CYAN}Clonando aplicação 'scripts' 🔧${WHITE}"
git clone https://github.com/systemmk/scripts.git

echo
echo -e "${RED} == STEP 4 == ${CYAN}Clonando aplicação 'seed-user' 🧑${WHITE}"
git clone https://github.com/systemmk/seed-user.git
cd seed-user

echo
echo -e "${CYAN}Instalando dependencias ${WHITE}"
npm i

echo
echo -e "${CYAN}Aplicação instalada com sucesso! ✔"
echo -e "${RED}ATENCAO ⚠ ${CYAN}Para executar a aplicação 'frontend', é necessário criar o .env.local com base no .env.example ${WHITE}"
