import { useEthers, ERC20Interface } from "vue-dapp";

import { ref } from "vue";

import { ethers, type BigNumber } from "ethers";

export function useToken(addr: string) {
  const { signer } = useEthers();
  const balance = ref();

  const getBalance = async (address: string) => {
    const tokenContract = new ethers.Contract(
      addr,
      ERC20Interface,
      signer.value!
    );
    const result = await tokenContract.balanceOf(address);

    balance.value = ethers.utils.formatUnits(result, 18);

    console.log(result);
  };

  const sendToken = async (to: string, amount: BigNumber) => {
    const tokenContract = new ethers.Contract(
      addr,
      ERC20Interface,
      signer.value!
    );

    const result = await tokenContract.transfer(to, amount);

    console.log(result);
  };

  return {
    balance,

    getBalance,
    sendToken,
  };
}
