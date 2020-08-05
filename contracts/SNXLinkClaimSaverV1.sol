pragma solidity ^0.5.0;

import "./interfaces/IFeePool.sol";
import "@emilianobonassi/gas-saver/ChiGasSaver.sol";


contract SNXLinkClaimSaverV1 is ChiGasSaver {
    // SNX addresses
    IFeePool public constant SNXProxyFeePool = IFeePool(0xb440DD674e1243644791a4AdfE3A2AbB0A92d309);

    function claimFees()
    external
    saveGas(msg.sender)
    returns (bool) {
        require(SNXProxyFeePool.claimOnBehalf(msg.sender), "Unable to claim fees");
        return true;
    }
}
