.PHONY: help status

help:
	@printf "website commands:\n"
	@printf "  make status  Show git status\n"

status:
	git status -sb
