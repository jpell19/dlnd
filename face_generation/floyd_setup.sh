# Change into directory with jupyter notebook
cd /Users/TP/Documents/udacity-dlnd/deep-learning/face_generation/

# login to floyd 
floyd login

# Start project for folder
floyd init face_generation


# Need to specify tensorflow
floyd run --gpu --env tensorflow --mode jupyter --data R5KrjnANiKVhLWAkpXhNBe

# Stop by process ID
floyd stop jpell19/projects/face_generation/1 

# Check data status (files in directory are persistent - need to delete)
floyd data status

# Delete all non-floyd data (see to have some floyd hosted datasets listed as well)
floyd data delete --yes

# Confirm all processes have been stopped
floyd status
