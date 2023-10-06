import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import chains from "./chains.json";
import dotenv from 'dotenv';
dotenv.config();

const config: HardhatUserConfig = {
  solidity: "0.8.17",
  networks: {
    polygon: {
        url: chains[0].rpc,
        accounts: [process.env.PRIVATE_KEY],
        network_id: 80001,
    },
    swisstronik: {
        url: chains[1].rpc,
        accounts: [process.env.PRIVATE_KEY],
        network_id: 1291,
    },
  }
};

export default config;
