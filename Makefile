SRC := mdup.py

.PHONY: test
test:
	@./test.sh

.PHONY: typecheck
typecheck:
	@uv tool run mypy $(SRC)

.PHONY: lint
lint:
	@uv run ruff check $(SRC)

.PHONY: format
format:
	@uv tool run autoflake --in-place --remove-all-unused-imports $(SRC) \
		&& uv tool run isort $(SRC) \
		&& uv tool run black --line-length 120 $(SRC)

.PHONY: list-todo
list-todo:
	@rg -w "TODO" $(SRC)
