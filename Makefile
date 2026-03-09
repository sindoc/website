.PHONY: help status list-pages list-journals

help:
	@printf "website commands:\n"
	@printf "  make status  Show git status\n"
	@printf "  make list-pages     List top-level published pages\n"
	@printf "  make list-journals  List top-level journals\n"

status:
	git status -sb

list-pages:
	find pages -maxdepth 1 -type f | sort

list-journals:
	find journals -maxdepth 1 -type f 2>/dev/null | sort
