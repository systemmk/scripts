RED="\e[31m"
CYAN="\e[36m"
WHITE="\e[97m"
TAB="              "

./run-supabase.sh

echo
echo -e "${RED} == STEP 3 == ${CYAN}Abrindo projeto Next.js no vscode 💻"
cd ../frontend
code .

echo
echo -e "${RED} == STEP 4 == ${CYAN}Abrindo aplicacao Next.js e Supabase Studio no browser 💻"
start http://127.0.0.1:54323
start http://127.0.0.1:3000

echo
echo -e "${RED} == STEP 5 == ${CYAN}Executando projeto Next.js 💻"
echo
npm run dev
