module yeildFarming::FarmAggregator {
    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;
    use aptos_framework::timestamp;

    /// Struct to track user's deposit and rewards
    struct UserPosition has store, key {
        deposited_amount: u64,
        reward_per_share: u64,
        last_update_time: u64,
        pending_rewards: u64
    }

    /// Struct for protocol configuration
    struct ProtocolConfig has key {
        total_deposits: u64,
        rewards_per_second: u64,
        last_reward_update: u64
    }

    const ERR_NOT_INITIALIZED: u64 = 1;
    const ERR_INSUFFICIENT_BALANCE: u64 = 2;

    /// Initialize the protocol with reward rate
    public entry fun initialize(admin: &signer, rewards_per_second: u64) {
        let config = ProtocolConfig {
            total_deposits: 0,
            rewards_per_second,
            last_reward_update: timestamp::now_seconds()
        };
        move_to(admin, config);
    }

    /// Deposit tokens into the farming protocol
    public entry fun deposit_tokens(user: &signer, amount: u64) acquires UserPosition, ProtocolConfig {
        let user_addr = signer::address_of(user);
        
        // Transfer tokens from user
        let deposit = coin::withdraw<AptosCoin>(user, amount);
        coin::deposit(user_addr, deposit);

        // Update or create user position
        if (!exists<UserPosition>(user_addr)) {
            let position = UserPosition {
                deposited_amount: amount,
                reward_per_share: 0,
                last_update_time: timestamp::now_seconds(),
                pending_rewards: 0
            };
            move_to(user, position);
        } else {
            let position = borrow_global_mut<UserPosition>(user_addr);
            position.deposited_amount = position.deposited_amount + amount;
            position.last_update_time = timestamp::now_seconds();
        };

        // Update protocol stats
        let config = borrow_global_mut<ProtocolConfig>(@yeildFarming);
        config.total_deposits = config.total_deposits + amount;
    }
}
