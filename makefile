.PHONY: kubevirt/stable.txt

all: kubevirt/stable.txt

kubevirt/stable.txt:
	mkdir kubevirt
	curl -L https://api.github.com/repos/kubevirt/kubevirt/releases | jq -r '.[].tag_name' | sort -V | tail -n1 > $@
