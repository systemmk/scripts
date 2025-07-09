RED="\e[31m"
CYAN="\e[36m"
WHITE="\e[97m"
TAB="              "

cd ..

echo -e "${RED} == STEP 1 == ${CYAN}Inicializando docker 🐟"
cmd.exe /c "start \"\" \"C:\Program Files\Docker\Docker\Docker Desktop.exe\""

echo -e "${CYAN}${TAB}Aguardando docker ficar pronto"
until docker info > /dev/null 2>&1; do
    sleep 1
done

echo
echo -e "${RED} == STEP 2 == ${CYAN}Executando migrations local 🎲"
cd migrations
npx supabase start
