# Smart Contract Address Recovery

## Could be recovered by knowing the address(Contract or externally owner account) and the nonce(numbr of transactions executed by that account)
Address= rightmost_20_bytes(keccak(RLP(sender_address, nonce)))

### keccak(Keccak is a family of cryptographic hash functions that is based on the sponge construction. It was designed by Guido Bertoni, Joan Daemen, Michaël Peeters, and Gilles Van Assche. Keccak is the winning entry in the NIST hash function competition and it was chosen to be the new SHA-3 standard in 2012.
Keccak is known for its security and efficiency, making it well-suited for a wide range of applications, including password hashing, digital signatures, and other forms of data integrity protection.)
### RLP(RLP (Recursive Length Prefix) is a serialization method used in Ethereum to encode structured data. It is used in several places in the Ethereum protocol, including in the encoding of transaction data and smart contract code)

web3.utils.soliditySha3(“0xd6”, “0x94” , address, “0x01”)
