module Hippo::TransactionSets
  module HIPAA_837

    class Base < Hippo::TransactionSets::Base

      #Transaction Set Header
      segment Hippo::Segments::ST,
                :name           => 'Transaction Set Header',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 50,
                :defaults => {
                  'ST01' => '837'
                }

      #Beginning of Hierarchical Transaction
      segment Hippo::Segments::BHT,
                :name           => 'Beginning of Hierarchical Transaction',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100,
                :defaults => {
                  'BHT01' => '0019'
                }

      #Submitter Name
      loop    Hippo::TransactionSets::HIPAA_837::L1000A,
                :name           => 'Submitter Name',
                :identified_by  => {'NM1.NM101' => '41'},
                :minimum        => 1,
                :maximum        => 1,
                :position       => 200

      #Receiver Name
      loop    Hippo::TransactionSets::HIPAA_837::L1000B,
                :name           => 'Receiver Name',
                :identified_by  => {'NM1.NM101' => '40'},
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500

      #Billing Provider Hierarchical Level
      loop    Hippo::TransactionSets::HIPAA_837::L2000A,
                :name           => 'Billing Provider Hierarchical Level',
                :identified_by  => {
                  'HL.HL03' => '20'
                },
                :minimum        => 1,
                :maximum        => 99999,
                :position       => 10

      #Transaction Set Trailer
      segment Hippo::Segments::SE,
                :name           => 'Transaction Set Trailer',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 5550

    end
  end
end
