# Change into directory with jupyter notebook
cd /Users/TP/Documents/udacity-dlnd/deep-learning/tv-script-generation

# login to floyd 
floyd login

# Start project for folder
floyd init dlnd_tv_script_generation

# Initialitze data set (data is folder name in wd)
floyd data init data

# Upload data folder
floyd data upload

# Need to specify 1.0 environment 
floyd run --gpu --env tensorflow-1.0 --mode jupyter

# Stop by process ID
floyd stop LSDcyGSeekNHSv5QNoPXmf

# Check data status (files in directory are persistent - need to delete)
floyd data status

# Delete all non-floyd data (see to have some floyd hosted datasets listed as well)
floyd data delete --yes

# Confirm all processes have been stopped
floyd status