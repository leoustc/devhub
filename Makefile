.PHONY: release

release:
	@read -p "Tag (e.g. v2.0.0): " TAG; \
	if [ -z "$$TAG" ]; then echo "Tag is required."; exit 1; fi; \
	if git rev-parse "refs/tags/$$TAG" >/dev/null 2>&1; then echo "Tag $$TAG already exists locally. Skipping."; exit 0; fi; \
	if git ls-remote --tags origin | grep -q "refs/tags/$$TAG$$"; then echo "Tag $$TAG already exists on remote. Skipping."; exit 0; fi; \
	git add .; \
	if git diff --cached --quiet; then echo "No changes to commit."; else git commit -m "release $$TAG"; fi; \
	git tag "$$TAG"; \
	git push origin HEAD; \
	git push origin "$$TAG"
