build: components
	@component build -s boot
components:
	@component install
clean:
	@rm -rf build/ components/

.PHONY: clean