@echo off
rem Publishes the Shadowville website (home, terms, privacy) to GitHub Pages - free.
rem Result: https://scarface-alt.github.io/shadowville-site/
cd /d "%~dp0"
git init -q -b main
git add -A
git -c user.name="ScarFace-alt" -c user.email="ScarFace-alt@users.noreply.github.com" commit -qm "Shadowville site: home, terms, privacy"
gh repo create shadowville-site --public --source . --push
gh api -X POST repos/ScarFace-alt/shadowville-site/pages -f "source[branch]=main" -f "source[path]=/"
echo.
echo Done. Site: https://scarface-alt.github.io/shadowville-site/  (takes about a minute to appear)
pause
