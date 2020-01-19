#!/bin/bash

echo "Installing dependencies..."
npm install

echo
echo "Enter your project details: "
echo
read -p 'Project name: ' name
read -p 'Version (X.Y.Z format): ' version
read -p 'Description: ' description
read -p 'Author: ' author
read -p 'License: ' license

echo
echo "Updating package.json..."
# Replace values in package.json
npx json -I -f package.json -e \
	'this.name = "'"$name"'"; this.version = "'"$version"'"; this.description = "'"$description"'"; this.author = "'"$author"'"; this.license = "'"$license"'"'

# Add init.sh.bak to .gitignore
echo "init.sh.bak" >> .gitignore

# Update README
cat > README.md << EOF
### Install dependencies

\`$ npm install\`

### Build the app and start the server: 

\`$ npm run dev\`

### Bundle the application for production:

\`$ npm run build\`

EOF

echo
echo "Project initialized, you're ready to code!"
echo
echo "'$ npm run dev' to start the server."
echo
echo "'$ npm run build' to bundle your application for production."

echo

mv init.sh init.sh.bak
