# source script/generate_secret.sh
echo -n 'export SECRET_KEY_BASE=' > script/set_secret.sh
rake secret >> script/set_secret.sh
chmod 700 script/set_secret.sh
source script/set_secret.sh
