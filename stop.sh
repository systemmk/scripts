RED="\e[31m"
CYAN="\e[36m"
WHITE="\e[97m"
TAB="              "

cd ..

echo -e "${RED} == STEP 1 == ${CYAN}Finalizando execução de containers do Supabase 🐟 ${WHITE}"
cd migrations
npx supabase stop

echo
echo -e "${RED} == STEP 2 == ${CYAN}Finalizando containers ainda pendentes 🧨 ${WHITE}"
docker stop $(docker ps -a | grep supabase | awk '{print $1}')

echo
echo -e "${RED} == STEP 3 == ${CYAN}Deletando containers ainda pendentes 🏹 ${WHITE}"
docker rm $(docker ps -a | grep supabase | awk '{print $1}')