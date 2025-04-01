# NFT Trading Post

This is a simple on-chain NFT Trading Post written in Solidity. The smart contract allows users to list, buy, and cancel NFT listings on the blockchain.

## Contract Address
0x23DBD7475264D7bEe037F601295Fa901aC1cAD7A

## Features
- **List NFTs**: Users can list their NFTs with a specified price.
- **Buy NFTs**: Users can purchase listed NFTs by sending the required Ether.
- **Cancel Listings**: The owner of a listing can cancel it at any time.

## Smart Contract Functions

### `listNFT(address _nftContract, uint256 _tokenId, uint256 _price)`
Lists an NFT for sale with a given price.

### `buyNFT(uint256 _listingId)`
Allows a user to buy an NFT by sending the required Ether.

### `cancelListing(uint256 _listingId)`
Cancels a listing, making it inactive.

## Notes
- The contract does not include imports or constructors.
- Transactions are handled using `payable` to transfer funds.
- The contract does not directly handle NFT transfers; external NFT contracts should be used for that purpose.

## License
This project is open-source and available for use under the MIT license.

