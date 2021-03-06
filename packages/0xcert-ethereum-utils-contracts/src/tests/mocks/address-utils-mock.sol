pragma solidity 0.5.11;

import "../../contracts/utils/address-utils.sol";

contract AddressUtilsMock {
  using AddressUtils for address;

  function isDeployedContract(
    address _addr
  )
    external
    view
    returns (bool addressCheck)
  {
    addressCheck = _addr.isDeployedContract();
  }
}
