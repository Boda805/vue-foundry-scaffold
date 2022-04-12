<script setup lang="ts">
import { useEthers } from "vue-dapp";
import { utils } from "ethers";
import { Contracts } from "../../env.d";
import { useToken } from "../composables/useToken";

const { balance, getBalance, sendToken } = useToken(Contracts.TOKEN_ADDRESS);
const { address } = useEthers();
const sendAddress = "";
const amount = "";
</script>

<template>
  <div>
    <button @click="getBalance(address)">Get Balance</button>
    <a>{{ balance }} </a>
  </div>
  <div>
    <input v-model="sendAddress" placeholder="Address to send tokens to" />
    <input v-model="amount" placeholder="Amount to send" />
    <button @click="sendToken(sendAddress, utils.parseEther(amount))">
      Send
    </button>
  </div>
</template>
