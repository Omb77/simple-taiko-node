#!/bin/sh

set -eou pipefail

if [ "$ENABLE_PROPOSER" == "true" ]; then
    taiko-client proposer \
      --l1.ws ${L1_ENDPOINT_WS} \
      --l2.ws http://l2_execution_engine:8545 \
      --taikoL1 ${TAIKO_L1_ADDRESS} \
      --taikoL2 ${TAIKO_L2_ADDRESS} \
      --l1.proposerPrivKey ${32de4318b981cbb18a5c467f4609d91053ab2662b124d396161b43092383955a} \
      --l2.suggestedFeeRecipient ${0xA6BC4073456877aBc975695AC718A38e62e9b9D5}
else
    sleep infinity
fi
