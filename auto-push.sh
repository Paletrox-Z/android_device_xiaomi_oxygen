#!/bin/bash
commit_name=$1
commit_desc=$2
git add *
if [ -z "$commit_name" ]; then
	commit_name="Auto commit: Misc changes"
fi
if [ -z "$commit_desc" ]; then
	commit_desc="Applying miscellaneous changes. This message is added by auto push script!"
fi
git commit -m "$commit_name" -m "$commit_desc"
git push origin pex-p
