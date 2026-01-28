.PHONY: release

release:
	@VERSION_FILE="../../VERSION"; \
	if [ ! -f "$$VERSION_FILE" ]; then echo "VERSION file not found at $$VERSION_FILE"; exit 1; fi; \
	VERSION=$$(cat "$$VERSION_FILE" | tr -d ' \n\r'); \
	if [ -z "$$VERSION" ]; then echo "VERSION is empty."; exit 1; fi; \
	TAG="v$$VERSION"; \
	echo "Using tag $$TAG"; \
	if git rev-parse "refs/tags/$$TAG" >/dev/null 2>&1; then echo "Tag $$TAG already exists locally. Skipping."; exit 0; fi; \
	if git ls-remote --tags origin | grep -q "refs/tags/$$TAG$$"; then echo "Tag $$TAG already exists on remote. Skipping."; exit 0; fi; \
	git add .; \
	if git diff --cached --quiet; then echo "No changes to commit."; else git commit -m "release $$TAG"; fi; \
	git tag "$$TAG"; \
	git push origin HEAD; \
	git push origin "$$TAG"
