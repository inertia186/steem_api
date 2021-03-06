module GolosCloud
  module Tx
    class EscrowTransfer < GolosCloud::SqlBase

      self.table_name = :TxEscrowTransfers

    end
  end
end

# Structure
#
# GolosCloud::Tx::EscrowTransfer(
#   ID: integer,
#   tx_id: integer,
#   from: varchar,
#   to: varchar,
#   sdb_amount: money,
#   steem_amount: money,
#   escrow_id: integer,
#   agent: varchar,
#   fee: money,
#   fee_symbol: varchar,
#   json_meta: varchar_max,
#   ratification_deadline: datetime,
#   escrow_expiration: datetime,
#   timestamp: datetime
# )
