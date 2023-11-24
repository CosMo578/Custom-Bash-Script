#!binbash

valid_input=false

while [ $valid_input == false ]; do 

read -p Do you want to run this script It would add index.html style.css and script to the src directory of your project (YyNn)  answer

case $answer in 

    [Yy])
    echo Proceeding...

    # Read project name
    read -p Enter a name for your project  project

    # Waiting for 5 seconds
    sleep 5 &

    # Text for css file
txtCss=$(cat EOF
 {
  margin 0;
  padding 0;
  box-sizing border-box;
}

html {
   scroll-behavior smooth;
}

body {
  font-size 1rem;
  overflow-x hidden;
  max-width 100vw;
  min-height 100vh;
}
EOF
)
# Text for html file 
txtHtml=$(cat EOF 
!DOCTYPE html
html lang=en
head
    meta charset=UTF-8
    meta name=viewport content=width=device-width, initial-scale=1.0
    title$projecttitle
    link rel=stylesheet href=srcstyles.css
    script defer src=srcscript.jsscript
head
body
    h1The Script Worksh1
body
html
EOF
)

# Text for js file

txtJs=$(cat EOF
console.log(This script runs)
EOF
)

    # Get the user's home directory
    desktop_path=$HOMEDesktop

    # Change to the desktop directory
    cd $desktop_path  exit 1

    # Check if the input directory already exists
    if [ -d $project ]; then
    echo Project directory already exists. Exiting.
    exit 1
    fi

    # If it does not create a folders
    mkdir $project 
    cd $project


    mkdir src
    mkdir assets
    cd src

    # Write html css and js into src folder
    echo $txtCss  style.css
    echo $txtHtml  index.html
    echo $txtJs  script.js

    echo Files added successfully
    
    read -p Open with VS Code  (YyNn) codeOpen
    case $codeOpen in
    [Yy])
        code $HOMEDesktop$project

        ;;
    [Nn])
        ;;
    )
    echo Invalid input. Please enter 'Y' or 'N' 
        ;;
    esac
    
    # Exit the loop
    echo Exiting...
    exit 0
    ;;

    [Nn])
    exit 0
    
    ;;

    )
    echo Invalid input. Please enter 'Y' or 'N' 
    ;;
 esac
done
    exit 0

