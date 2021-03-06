pragma solidity 0.5.11;

/**
 * @dev Xcert interface.
 */
interface Xcert // is ERC721 metadata enumerable
{

  /**
   * @dev Creates a new Xcert.
   * @param _to The address that will own the created Xcert.
   * @param _id The Xcert to be created by the msg.sender.
   * @param _imprint Cryptographic asset imprint.
   */
  function create(
    address _to,
    uint256 _id,
    bytes32 _imprint
  )
    external;

  /**
   * @dev Change URI.
   * @param _uriPrefix New URI prefix.
   * @param _uriPostfix New URI postfix.
   */
  function setUri(
    string calldata _uriPrefix,
    string calldata _uriPostfix
  )
    external;

  /**
   * @dev Returns a bytes4 of keccak256 of json schema representing 0xcert Protocol convention.
   * @return Schema id.
   */
  function schemaId()
    external
    view
    returns (bytes32 _schemaId);

  /**
   * @dev Returns imprint for Xcert.
   * @param _tokenId Id of the Xcert.
   * @return Token imprint.
   */
  function tokenImprint(
    uint256 _tokenId
  )
    external
    view
    returns(bytes32 imprint);

}
