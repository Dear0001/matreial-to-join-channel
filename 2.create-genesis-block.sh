configtxgen -outputBlock ./artifact/genesis.block \
            -channelID genesis -profile TwoOrgsOrdererGenesis \
            -configPath  ${PWD}/config/