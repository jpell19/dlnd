# Change into directory with jupyter notebook
cd /Users/TP/Documents/udacity-dlnd/deep-learning/language-translation/

# login to floyd 
floyd login

# Start project for folder
floyd init language_translation

# Initialitze data set (data is folder name in wd)
floyd data init data

# Upload data folder
floyd data upload

# Need to specify 1.0 environment 
floyd run --gpu --env tensorflow --mode jupyter

# Stop by process ID
floyd stop jpell19/projects/language_translation/1 

# Check data status (files in directory are persistent - need to delete)
floyd data status

# Delete all non-floyd data (see to have some floyd hosted datasets listed as well)
floyd data delete --yes

# Confirm all processes have been stopped
floyd status
