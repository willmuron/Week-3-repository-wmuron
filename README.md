# IMPORTANT DIRECTORIES IN THE HPC

## 1. Your Home Directory
**Path:** `/jet/home/your-psc-username`
- This is your personal workspace on Bridges-2.
- To navigate here quickly, use:
  ```bash
  cd ~
  ```
  (The `~` symbol, called tilde, represents your home directory.)

## 2. Shared Storage Directory (Class & Tutorial Data)
**Path:** `/ocean/projects/agr250001p/shared`
- This is a shared space where class materials and datasets will be stored.

## 3. Your Personal Storage Folder (Large Files)
**Path:** `/ocean/projects/agr250001p/your-psc-username`
- Use this directory for storing large files that do not fit in your home directory.

---

# CHECKING DISK SPACE USAGE
Since `my_quota` did not work, use these commands instead:

### Check Available Space in Different Directories
| **Directory**          | **Command**                                      | **Purpose** |
|------------------------|--------------------------------------------------|------------|
| Home Directory         | `df -h ~`                                        | Check your personal space usage. |
| Personal Storage       | `df -h /ocean/projects/agr250001p/your-psc-username` | See how much space is left in your storage folder. |
| Shared Storage         | `df -h /ocean/projects/agr250001p/shared`        | Check how much space remains in the shared class folder. |

---

# CLONING A REPOSITORY (Read-Only Access)
Cloning allows you to make a local copy of a GitHub repository, including scripts, data, and files.  
However, you cannot push changes unless you own the repository.

### Steps to Clone a Repository
1. Find the repository URL on GitHub:
   - Open GitHub in your browser.
   - Go to the repository of interest.
   - Click the **green "Code" button** → Select **HTTPS** → Copy the URL.

2. Run this command in your HPC terminal:
   ```bash
   git clone https://repository-url
   ```
3. This creates a new folder with the repository’s name. Enter it with:
   ```bash
   cd repository-name
   ```

---

# FORKING A REPOSITORY (Make It Yours) & CLONING IT
Forking allows you to make a copy of someone else's repository under your GitHub account, giving you full control to modify and push changes.

### Steps to Fork & Clone a Repository
1. Go to GitHub → Open the repository you want to use.
2. Click the "Fork" button (top right).
3. Your forked version will now have a new URL.
4. Copy the URL and clone it to the HPC:
   ```bash
   git clone https://your.forked.repository-url
   ```
5. Enter the newly created folder:
   ```bash
   cd your-forked-repository-name
   ```
6. Modify, create, and edit files as needed.

---

# ADDING, COMMITTING, AND PUSHING CHANGES
Once you've made changes in your local copy, push them back to GitHub:

1. Stage all changes:
   ```bash
   git add .
   ```
2. Commit the changes with a message:
   ```bash
   git commit -m "Adding new scripts"
   ```
3. Push changes to GitHub:
   ```bash
   git push origin main
   ```
*(If your branch is not named `main`, replace `main` with your branch name.)*

---

# PULLING UPDATES FROM GITHUB
Always pull the latest changes before working on your repository to avoid conflicts.  
```bash
git pull origin main
```

---

### Final Notes:
- Use `git clone` for read-only access (you can't push changes).
- Use forking + cloning if you want to modify and store changes in your GitHub.
- Always `git pull origin main` before making changes to stay updated.
