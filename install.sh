RED="\e[31m"
CYAN="\e[36m"

cd ..

echo -e "${RED} == STEP 1 == ${CYAN}Clonando aplicação 'frontend'"
git clone https://github.com/systemmk/frontend.git

echo -e "${RED} == STEP 1 == ${CYAN}Clonando aplicação 'migrations'"
git clone https://github.com/systemmk/migrations.git

echo -e "${RED} == STEP 1 == ${CYAN}Clonando aplicação 'seed-user'"
git clone https://github.com/systemmk/seed-user.git

run.sh