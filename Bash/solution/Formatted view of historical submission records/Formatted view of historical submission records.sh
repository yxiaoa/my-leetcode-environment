# 1. Export the commit history in the following format.
# the complete hash of the tree - the author's name : the author's email address
git log --pretty=format:"%T —— %an : %ae"

# 2. Please output the history of commits in the following format.
# Complete hash of the tree -- Submitter's name : Submitter's email address, commit description
git log --pretty=format:"%T —— %cn : %ce, %s"

# 3. Please output the history of commits in the following format.
# abbreviated hash of tree - name of committer, marks: commit
git log --pretty=format:"%t —— %cn, marks: %s"
