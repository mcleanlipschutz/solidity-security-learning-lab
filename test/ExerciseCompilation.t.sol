// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { CommunityVault } from "../exercises/01-vault-review/CommunityVault.sol";
import { RewardsBank } from "../exercises/02-bank-review/RewardsBank.sol";
import { PermitAirdrop } from "../exercises/03-signature-review/PermitAirdrop.sol";
import { SharePool } from "../exercises/04-share-pool-review/SharePool.sol";
import { TestBase } from "./TestBase.sol";

/// @notice Confirms that all challenge contracts remain compilable without revealing solutions.
contract ExerciseCompilationTest is TestBase {
    function testExerciseContractsDeploy() public {
        CommunityVault vault = new CommunityVault(address(this));
        RewardsBank bank = new RewardsBank();
        PermitAirdrop airdrop = new PermitAirdrop(address(this));
        SharePool pool = new SharePool();

        assertEq(vault.manager(), address(this));
        assertEq(bank.balances(address(this)), 0);
        assertEq(airdrop.signer(), address(this));
        assertEq(pool.totalShares(), 0);
    }
}
