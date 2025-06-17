import subprocess
import sys
import os
from pathlib import Path

def check_command(cmd, name):
    """Check if a command exists on the system."""
    try:
        subprocess.run([cmd, "--version"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=True)
        return True
    except Exception:
        print(f"[ERROR] {name} is not installed or not in your PATH.")
        return False

def install_requirements():
    """Install dependencies from requirements.txt if present, else fallback to core packages."""
    req_file = Path("requirements.txt")
    if req_file.is_file():
        print("[INFO] Installing required Python packages from requirements.txt ...")
        res = subprocess.run([sys.executable, "-m", "pip", "install", "-r", str(req_file)])
        if res.returncode != 0:
            print("[ERROR] Failed to install required packages from requirements.txt.")
            sys.exit(1)
    else:
        print("[WARNING] requirements.txt not found. Attempting to install MkDocs core packages...")
        res = subprocess.run([sys.executable, "-m", "pip", "install", "mkdocs", "mkdocs-material"])
        if res.returncode != 0:
            print("[ERROR] Failed to install MkDocs core packages.")
            sys.exit(1)

def find_mkdocs_yml(start_dir: Path) -> Path:
    """Search upward from the given directory to locate mkdocs.yml."""
    cur = start_dir.resolve()
    while True:
        candidate = cur / "mkdocs.yml"
        if candidate.is_file():
            return candidate
        if cur.parent == cur:
            # Reached the filesystem root
            break
        cur = cur.parent
    return None

def main():
    print("=" * 50)
    print("  Bluewater Framework: Preview Technical Docs")
    print("=" * 50)
    print()

    # Check Python
    if not check_command(sys.executable, "Python"):
        print("Please install Python 3.x from https://www.python.org/downloads/")
        sys.exit(1)

    # Check pip
    try:
        subprocess.run([sys.executable, "-m", "pip", "--version"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=True)
    except Exception:
        print("[ERROR] pip is not installed or not in your PATH.")
        print("Please install pip for Python 3.x.")
        sys.exit(1)

    # Install dependencies
    install_requirements()

    # Detect mkdocs.yml location
    start_dir = Path.cwd()
    mkdocs_yml = find_mkdocs_yml(start_dir)
    if not mkdocs_yml:
        print("[ERROR] Could not locate mkdocs.yml in this directory or any parent directories.")
        print("Please ensure you are in the project directory or that mkdocs.yml exists.")
        sys.exit(1)

    docs_dir = mkdocs_yml.parent
    print(f"[INFO] Using documentation root: {docs_dir}")

    # Change to docs root before serving
    os.chdir(docs_dir)
    print("[INFO] Launching MkDocs at http://localhost:8000/ ...")
    try:
        subprocess.run(["mkdocs", "serve"])
    except KeyboardInterrupt:
        print("\n[INFO] MkDocs server stopped by user.")
    except FileNotFoundError:
        print("[ERROR] MkDocs command not found. Installation may have failed.")
        sys.exit(1)

    print("\nPreview session ended.")

if __name__ == "__main__":
    main()
