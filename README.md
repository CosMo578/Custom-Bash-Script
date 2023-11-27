# Project Setup Script

This Bash script automates the setup of a basic project structure with HTML, CSS, and JavaScript files. It allows you to quickly create a project directory with essential files and optionally open it in Visual Studio Code.

## Prerequisites

- Bash shell or Git Bash
- Visual Studio Code (optional)

## Setup Instructions

### For Linux and macOS Users

1. **Download the Script:**
   - Download the script and save it with a meaningful name, e.g. `setup_project.sh`.

2. **Make it Executable:**
   - Open a terminal and navigate to the directory containing the script.
   - Run the following command to make the script executable:
     ```bash
     chmod +x setup_project.sh
     ```

3. **Move to the Default Bin Path:**
   - Move the script to the default bin path (e.g., `/usr/local/bin`):
     ```bash
     sudo mv setup_project.sh /usr/local/bin/setup_project
     ```

4. **Run the Script:**
   - Open a terminal and run the script using the following command:
     ```bash
     setup_project
     ```

5. **Follow the Prompts:**
   - The script will prompt you whether you want to run it. Type 'Y' or 'N' accordingly.

   - If you choose 'Y':
     - Enter a name for your project.
     - The script will create a project directory on your desktop with the specified name.
     - Inside the project directory, it will create `src` and `assets` subdirectories.
     - HTML, CSS, and JavaScript files (`index.html`, `style.css`, and `script.js`) will be added to the `src` directory.
     - Optionally, the script will ask if you want to open the project in Visual Studio Code.

   - If you choose 'N':
     - The script will exit.

6. **Explore Your Project:**
   - You can now navigate to your desktop and find the newly created project directory.

7. **Open with VS Code (Optional):**
   - If you chose to open the project in Visual Studio Code, it will automatically launch with the created project.

### For Windows Users (Git Bash)

1. **Download the Script:**
   - Download the script and save it with a meaningful name, e.g. `setup_project.sh`.

2. **Make it Executable (if needed):**
   - In Git Bash, scripts usually don't require explicit permission changes like in Unix-based systems.

3. **Copy to a Directory in PATH:**
   - Copy the script to a directory that is included in your system's PATH. Common choices include `C:\Windows` or any directory listed in the PATH environment variable.

     For example, copy the script to `C:\Windows`:
     ```bash
     cp setup_project.sh /c/Windows/setup_project.sh
     ```

4. **Run the Script:**
   - Open a Git Bash terminal and run the script using the following command:
     ```bash
     setup_project.sh
     ```

5. **Follow the Prompts:**
   - Follow the prompts as described in the previous instructions.

## Note
- Ensure that Visual Studio Code is installed on your system if you opt to open the project with VS Code.
- The script assumes a Linux-like environment. Adjustments may be needed for other operating systems.
