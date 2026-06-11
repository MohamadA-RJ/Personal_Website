#!/bin/bash                            # Standard bash script header
#SBATCH --job-name=setup_env           # Job name for easy identification
#SBATCH --account=research-ae-asm      # Your project/account name (change if needed), Based on this your queue access and priority are determined. 
#SBATCH --partition=compute-p1         # Partition/queue to submit to. Check the docs if you want to use a different one (e.g. gpu, long, etc.)
#SBATCH --ntasks=1                     # Number of tasks (1 for a single job)
#SBATCH --cpus-per-task=1              # Number of CPU cores per task (1 is usually sufficient for setup)
#SBATCH --mem-per-cpu=1G               # Memory per CPU core
#SBATCH --time=00:30:00                # Maximum runtime, should be more than enough for environment setup 
#SBATCH --mail-type=BEGIN,END,FAIL     # email notification at start, end, fail
#SBATCH --output=setup_env_%j.out      # Standard output file, we can view later (where %j is the job ID)
#SBATCH --error=setup_env_%j.err       # Standard error file

# =========================================================
# DelftBlue Environment Setup (Python 3.11.9)
# =========================================================
# This script creates and configures a persistent Python
# virtual environment depending on your framework.
#
# Key Features:
# - Uses Python 3.11.9 (modern, fully compatible)
# - Installs all scientific dependencies (latest versions)
# - Ensures packages are installed INSIDE your venv only
# - Runs a verification test at the end
# =========================================================

# --- Load DelftBlue modules ---
module load 2025
module load python/3.11.9
module load py-pip

# --- Define environment directory ---
VENV_DIR=/home/marajaraja/my_venv      # Change this if you want a different location e.g. /home/username/my_venv

# ----------------------------------------
# Step 1: Create the virtual environment if needed
# ----------------------------------------
if [ ! -d "$VENV_DIR" ]; then
    echo "[INFO] Creating new virtual environment at $VENV_DIR"
    python -m venv $VENV_DIR
else
    echo "[INFO] Virtual environment already exists at $VENV_DIR"
fi

# Ensure correct permissions (fix "Permission denied" on activate)
chmod -R u+rwX $VENV_DIR

# ----------------------------------------
# Step 2: Activate the environment (to ensure correct context)
# ----------------------------------------
source $VENV_DIR/bin/activate
echo "[INFO] Activated virtual environment at: $VENV_DIR"
echo "[INFO] Using Python: $(which python)"
echo "[INFO] Python version: $(python --version)"

# ----------------------------------------
# Step 3: Upgrade pip inside the venv
# ----------------------------------------
python -m pip install --upgrade pip

# ----------------------------------------
# Step 4: Install all required packages (Download your dependencies here)
# ----------------------------------------

# These are the core scientific libraries you need. Adjust as necessary.
python -m pip install numpy pandas matplotlib seaborn plotly shapely joblib scipy statsmodels scikit-optimize   

# ----------------------------------------
# Step 5: Show installed packages
# ----------------------------------------
echo "[INFO] Installed packages inside $VENV_DIR:"
python -m pip list

# ----------------------------------------
# Step 6: Verify imports (sanity check)
# ----------------------------------------
echo "[INFO] Verifying imports..."
python - <<'EOF'
import numpy, pandas, matplotlib, seaborn, plotly, shapely, joblib, scipy, statsmodels, skopt
print("All required libraries imported successfully under Python 3.11.9!")
EOF

# ----------------------------------------
# Step 7: Done
# ----------------------------------------
echo "[DONE] Environment setup complete."
echo "[NEXT] To use it in any session:"
echo "       module load 2025"
echo "       module load python/3.11.9"
echo "       source ~/my_venv/bin/activate"
