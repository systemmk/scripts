RED="\e[31m"
CYAN="\e[36m"
cd ..

echo -e "${RED} == STEP 1 == ${CYAN}Executando migrations local"
echo ""
cd mksystem-migrations
npx supabase start

cd ../mksystem
echo ""
echo -e "${RED} == STEP 2 == ${CYAN}Abrindo projeto Next.js no vscode"
echo ""
code .

echo -e "${RED} == STEP 3 == ${CYAN}Abrindo aplicacao Next.js e Supabase Studio no browser"
echo ""
start http://127.0.0.1:54323
start http://127.0.0.1:3000

echo -e "${RED} == STEP 4 == ${CYAN}Executando projeto Next.js"
npm run dev
