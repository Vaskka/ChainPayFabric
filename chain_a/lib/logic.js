/**
 * Track the trade of a commodity from one trader to another
 * @param {com.vaskka.chaina.Trade} trade - the trade to be processed
 * @transaction
 */
async function tradeCommodity(trade) {
    if (trade.type == 0) {
        // 0 代表支付
        trade.balance.value = trade.balance.value - trade.tradeValue;
    }
    else {
        // 非0代表收款
        trade.balance.value = trade.balance.value + trade.tradeValue;
    }

    const assetRegistry = await getAssetRegistry('com.vaskka.chaina.Balance');
    // Update the asset in the asset registry.
    await assetRegistry.update(trade.balance);
}