RED="\e[31m"
CYAN="\e[96m"
cd ..

echo -e "${RED} == STEP 1 == ${CYAN}Finalizando execução de containers do Supabase"

cd mksystem-migrations
npx supabase stop
