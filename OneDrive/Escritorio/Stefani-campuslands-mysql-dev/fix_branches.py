import subprocess
import re

for i in range(41, 61):
    num = str(i).zfill(3)
    branch = f"alumno/stefani-sanchez/ejercicio-{num}"
    
    print(f"Fixing {branch}...")
    
    # Check if branch exists
    result = subprocess.run(["git", "show-ref", "--verify", "--quiet", f"refs/heads/{branch}"])
    if result.returncode != 0:
        print(f"Branch {branch} does not exist locally.")
        continue

    # Get paths related to stefani-sanchez resolution in the target branch
    # Using git ls-tree
    tree_out = subprocess.run(["git", "ls-tree", "-r", branch, "--name-only"], capture_output=True, text=True)
    paths = []
    for line in tree_out.stdout.split('\n'):
        if f"ejercicio-{num}" in line and "resoluciones/stefani-sanchez" in line:
            paths.append(line.strip())
            
    if not paths:
        print(f"No files found for {branch}")
        continue
        
    print(f"Found {len(paths)} files to copy.")
    
    # Create a clean branch from upstream/dev
    temp_branch = f"temp-{num}"
    subprocess.run(["git", "checkout", "upstream/dev", "-B", temp_branch], check=True)
    
    # Checkout those specific paths from the original branch
    for p in paths:
        subprocess.run(["git", "checkout", branch, "--", p], check=True)
        
    # Commit the changes
    subprocess.run(["git", "add", "."], check=True)
    subprocess.run(["git", "commit", "-m", f"feat: resolucion ejercicio {num}"], check=True)
    
    # Force push to stefani remote as the original branch name
    print(f"Pushing {branch} to stefani remote...")
    push_res = subprocess.run(["git", "push", "stefani", f"{temp_branch}:{branch}", "--force"])
    if push_res.returncode == 0:
        print(f"Successfully pushed {branch}")
    else:
        print(f"Failed to push {branch}")

    # Reset back to upstream/dev to clear working tree
    subprocess.run(["git", "checkout", "upstream/dev", "--force"])
    # Delete temp branch
    subprocess.run(["git", "branch", "-D", temp_branch])

print("Done fixing branches!")
