<script setup lang="ts">
import {
  useBoard,
  useEthers,
  useWallet,
  displayChainName,
  displayEther,
  shortenAddress,
} from "vue-dapp";

const { open } = useBoard();
const { status, disconnect, error } = useWallet();
const { address, balance, chainId, isActivated } = useEthers();
</script>

<template>
  <div class="h-full flex flex-col justify-center items-center">
    <p v-if="error" class="text-red-500">{{ error }}</p>

    <div v-if="isActivated" class="text-center">
      <p>{{ shortenAddress(address) }}</p>
      <p>{{ displayEther(balance) }} ETH</p>
      <p>
        network:
        <span class="capitalize">
          {{ displayChainName(chainId ? chainId : 1) }}
        </span>
      </p>
    </div>

    <div class="m-4">
      <button
        @click="isActivated ? disconnect() : open()"
        class="btn"
        :disabled="status === 'connecting'"
      >
        {{
          status === "connected"
            ? "Disconnect"
            : status === "connecting"
            ? "Connecting..."
            : "Connect"
        }}
      </button>
    </div>
  </div>
  <vdapp-board />
</template>
