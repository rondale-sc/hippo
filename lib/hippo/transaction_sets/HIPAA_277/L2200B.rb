module Hippo::TransactionSets
  module HIPAA_277

    class L2200B < Hippo::TransactionSets::Base
      loop_name 'L2200B'    #Information Receiver Application Trace Identifier

      #Information Receiver Application Trace Identifier
      segment Hippo::Segments::TRN,
                :name           => 'Information Receiver Application Trace Identifier',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 900,
                :defaults => {
                  'TRN01' => '2'
                }

      #Information Receiver Status Information
      segment Hippo::Segments::STC,
                :name           => 'Information Receiver Status Information',
                :minimum        => 1,
                :maximum        => 99999,
                :position       => 1000

      #Total Accepted Quantity
      segment Hippo::Segments::QTY,
                :name           => 'Total Accepted Quantity',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1210,
                :defaults => {
                  'QTY01' => '90'
                }

      #Total Rejected Quantity
      segment Hippo::Segments::QTY,
                :name           => 'Total Rejected Quantity',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1211,
                :defaults => {
                  'QTY01' => 'AA'
                }

      #Total Accepted Amount
      segment Hippo::Segments::AMT,
                :name           => 'Total Accepted Amount',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1220,
                :defaults => {
                  'AMT01' => 'YU'
                }

      #Total Rejected Amount
      segment Hippo::Segments::AMT,
                :name           => 'Total Rejected Amount',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1222,
                :defaults => {
                  'AMT01' => 'YY'
                }

    end
  end
end
