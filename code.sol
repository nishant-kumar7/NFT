pragma solidity ^0.8.0;

contract NFTTradingPost {
    struct Listing {
        address owner;
        address nftContract;
        uint256 tokenId;
        uint256 price;
        bool active;
    }
    
    mapping(uint256 => Listing) public listings;
    uint256 public listingCount;
    
    function listNFT(address _nftContract, uint256 _tokenId, uint256 _price) public {
        listings[listingCount] = Listing(msg.sender, _nftContract, _tokenId, _price, true);
        listingCount++;
    }
    
    function buyNFT(uint256 _listingId) public payable {
        Listing storage listing = listings[_listingId];
        require(listing.active, "Listing not active");
        require(msg.value >= listing.price, "Insufficient funds");
        
        listing.active = false;
        payable(listing.owner).transfer(msg.value);
    }
    
    function cancelListing(uint256 _listingId) public {
        Listing storage listing = listings[_listingId];
        require(msg.sender == listing.owner, "Not owner");
        listing.active = false;
    }
}
