SRC := $(shell find ./mdup -name "*.py")

.PHONY: test
test:
	@./scripts/test.sh

.PHONY: typecheck
typecheck:
	@uv tool run mypy mdup/

.PHONY: lint
lint:
	@uv run ruff check mdup/

.PHONY: format
format:
	@uv tool run autoflake --in-place --remove-all-unused-imports $(SRC) \
		&& uv tool run isort $(SRC) \
		&& uv tool run black --line-length 120 $(SRC)

.PHONY: list-todo
list-todo:
	@rg -w "TODO" $(SRC)
