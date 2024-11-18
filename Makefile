-include .env

.PHONY: all test clean deploy fund help install format anvil deployMood deployMoodSeplia mintSepolia

DEFAULT_ANVIL_KEY := 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80

all: clean remove install update build

# Clean the repo
clean  :; forge clean

# Remove modules
remove :; rm -rf .gitmodules && rm -rf .git/modules/* && rm -rf lib && touch .gitmodules && git add . && git commit -m "modules"

install :; forge install cyfrin/foundry-devops@0.2.2 --no-commit && forge install foundry-rs/forge-std@v1.8.2 --no-commit && forge install openzeppelin/openzeppelin-contracts@v5.0.2 --no-commit

# Update Dependencies
update:; forge update

build:; forge build

test :; forge test 

format :; forge fmt

anvil :; anvil -m 'test test test test test test test test test test test junk' --steps-tracing --block-time 1

NETWORK_ARGS := --rpc-url http://localhost:8545 --private-key $(DEFAULT_ANVIL_KEY) --broadcast
SEPOLIA_ARGS := --rpc-url $(SEPOLIA_RPC_URL) --account default --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv

ifeq ($(findstring --network sepolia,$(ARGS)),--network sepolia)
	NETWORK_ARGS := --rpc-url $(SEPOLIA_RPC_URL) --account default --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv
endif

deploy:
	@forge script DeployBasicNft $(NETWORK_ARGS)

mint:
	@forge script MintBasicNft ${NETWORK_ARGS}

deployMood:
	@forge script DeployMoodNft $(NETWORK_ARGS)

deployMoodSepolia:
	@forge script DeployMoodNft $(SEPOLIA_ARGS)
mintMoodSepolia:
	@forge script MintMoodNft --rpc-url $(SEPOLIA_RPC_URL) --account default --broadcast

mintMoodNft:
	@forge script MintMoodNft $(NETWORK_ARGS)

flipMoodNft:
	@forge script FlipMoodNft $(NETWORK_ARGS)
