pragma solidity ^0.5.0;

interface IFeePool {
    /**
     * @notice Delegated claimFees(). Call from the delegated address
     * and the fees will be sent to the claimingForAddress.
     * approveClaimOnBehalf() must be called first to approve the delegate address
     * @param claimingForAddress The account you are claiming fees for
     */
    function claimOnBehalf(address claimingForAddress) external returns (bool);
}
