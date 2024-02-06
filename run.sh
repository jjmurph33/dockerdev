if docker container ls -a -f name=dockerdev | grep -q 'dockerdev'; then
	docker start dockerdev && docker attach dockerdev
else
	docker run -it -v $PWD:/host -h dockerdev --name dockerdev dockerdev
fi

