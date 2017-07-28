BUILD_DIR = build
BIN_DIR = bin

$(MAKECMDGOALS) : euler-$(MAKECMDGOALS).hs
	@mkdir -p $(BIN_DIR)
	@mkdir -p $(BUILD_DIR)
	ghc -o $(BIN_DIR)/euler-$@ -osuf $@.o -hisuf $@.hi -odir $(BUILD_DIR)/ -hidir $(BUILD_DIR) euler-$@.hs
