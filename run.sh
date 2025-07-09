RED="\e[31m"
CYAN="\e[36m"

cd ..

echo -e "${RED} == STEP 1 == ${CYAN}Inicializando docker"
echo
cmd.exe /c "start \"\" \"C:\Program Files\Docker\Docker\Docker Desktop.exe\""


echo
echo -e "${RED} == STEP 2 == ${CYAN}Executando migrations local"
echo
cd migrations
npx supabase start

echo
echo -e "${RED} == STEP 3 == ${CYAN}Abrindo projeto Next.js no vscode"
echo
cd ../frontend
code .

echo
echo -e "${RED} == STEP 4 == ${CYAN}Abrindo aplicacao Next.js e Supabase Studio no browser"
echo
start http://127.0.0.1:54323
start http://127.0.0.1:3000

echo
echo -e "${RED} == STEP 5 == ${CYAN}Executando projeto Next.js"
echo
npm run dev
