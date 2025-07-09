RED="\e[31m"
CYAN="\e[36m"
WHITE="\e[97m"

echo -e "${RED} == STEP 1 == ${CYAN}Clonando aplicação 'frontend' ${WHITE}"
echo
git clone https://github.com/systemmk/frontend.git
cd frontend
git checkout develop
cd ..

echo
echo -e "${RED} == STEP 2 == ${CYAN}Clonando aplicação 'migrations' ${WHITE}"
echo
git clone https://github.com/systemmk/migrations.git
cd migrations
git checkout develop
cd ..

echo
echo -e "${RED} == STEP 3 == ${CYAN}Clonando aplicação 'scripts' ${WHITE}"
echo
git clone https://github.com/systemmk/scripts.git

echo
echo -e "${RED} == STEP 4 == ${CYAN}Clonando aplicação 'seed-user' ${WHITE}"
echo
git clone https://github.com/systemmk/seed-user.git

echo
echo -e "${RED} == STEP 4 == ${CYAN}Executando script run.sh"
echo
cd scripts
./run.sh