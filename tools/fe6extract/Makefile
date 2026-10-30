# 习惯性入口：make / make test / make verify / make clean
#
# 这个目录是 Rust 工作区，cargo 才是真正的构建器；这里只是套一层，
# 让你不用记 cargo 的参数，也跟仓库根目录的 make 用法保持一致。

CARGO ?= cargo
ROM   ?= ../../fe6re.gba
BIN   := target/release/fe6extract

.PHONY: all build test verify run clean

all: build

build:
	$(CARGO) build --release

test:
	$(CARGO) test

verify: build
	@$(BIN) pinfo $(ROM) --verify --limit 0 > /dev/null \
		&& echo "verify ok: $(ROM)"

run: build
	@$(BIN) pinfo $(ROM) --limit 12

clean:
	$(CARGO) clean
	@rm -rf target
	@echo "cleaned: $(CURDIR)/target"
