.PHONY: clean All

All:
	@echo "----------Building project:[ A02_v_02 - Debug ]----------"
	@"$(MAKE)" -f  "A02_v_02.mk"
clean:
	@echo "----------Cleaning project:[ A02_v_02 - Debug ]----------"
	@"$(MAKE)" -f  "A02_v_02.mk" clean
