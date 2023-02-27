# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/billing/budgets/v1beta1/budget_model.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/struct_pb'
require 'google/type/date_pb'
require 'google/type/money_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/billing/budgets/v1beta1/budget_model.proto", :syntax => :proto3) do
    add_message "google.cloud.billing.budgets.v1beta1.Budget" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :budget_filter, :message, 3, "google.cloud.billing.budgets.v1beta1.Filter"
      optional :amount, :message, 4, "google.cloud.billing.budgets.v1beta1.BudgetAmount"
      repeated :threshold_rules, :message, 5, "google.cloud.billing.budgets.v1beta1.ThresholdRule"
      optional :all_updates_rule, :message, 6, "google.cloud.billing.budgets.v1beta1.AllUpdatesRule"
      optional :etag, :string, 7
    end
    add_message "google.cloud.billing.budgets.v1beta1.BudgetAmount" do
      oneof :budget_amount do
        optional :specified_amount, :message, 1, "google.type.Money"
        optional :last_period_amount, :message, 2, "google.cloud.billing.budgets.v1beta1.LastPeriodAmount"
      end
    end
    add_message "google.cloud.billing.budgets.v1beta1.LastPeriodAmount" do
    end
    add_message "google.cloud.billing.budgets.v1beta1.ThresholdRule" do
      optional :threshold_percent, :double, 1
      optional :spend_basis, :enum, 2, "google.cloud.billing.budgets.v1beta1.ThresholdRule.Basis"
    end
    add_enum "google.cloud.billing.budgets.v1beta1.ThresholdRule.Basis" do
      value :BASIS_UNSPECIFIED, 0
      value :CURRENT_SPEND, 1
      value :FORECASTED_SPEND, 2
    end
    add_message "google.cloud.billing.budgets.v1beta1.AllUpdatesRule" do
      optional :pubsub_topic, :string, 1
      optional :schema_version, :string, 2
      repeated :monitoring_notification_channels, :string, 3
      optional :disable_default_iam_recipients, :bool, 4
    end
    add_message "google.cloud.billing.budgets.v1beta1.Filter" do
      repeated :projects, :string, 1
      repeated :credit_types, :string, 7
      optional :credit_types_treatment, :enum, 4, "google.cloud.billing.budgets.v1beta1.Filter.CreditTypesTreatment"
      repeated :services, :string, 3
      repeated :subaccounts, :string, 5
      map :labels, :string, :message, 6, "google.protobuf.ListValue"
      oneof :usage_period do
        optional :calendar_period, :enum, 8, "google.cloud.billing.budgets.v1beta1.CalendarPeriod"
        optional :custom_period, :message, 9, "google.cloud.billing.budgets.v1beta1.CustomPeriod"
      end
    end
    add_enum "google.cloud.billing.budgets.v1beta1.Filter.CreditTypesTreatment" do
      value :CREDIT_TYPES_TREATMENT_UNSPECIFIED, 0
      value :INCLUDE_ALL_CREDITS, 1
      value :EXCLUDE_ALL_CREDITS, 2
      value :INCLUDE_SPECIFIED_CREDITS, 3
    end
    add_message "google.cloud.billing.budgets.v1beta1.CustomPeriod" do
      optional :start_date, :message, 1, "google.type.Date"
      optional :end_date, :message, 2, "google.type.Date"
    end
    add_enum "google.cloud.billing.budgets.v1beta1.CalendarPeriod" do
      value :CALENDAR_PERIOD_UNSPECIFIED, 0
      value :MONTH, 1
      value :QUARTER, 2
      value :YEAR, 3
    end
  end
end

module Google
  module Cloud
    module Billing
      module Budgets
        module V1beta1
          Budget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.Budget").msgclass
          BudgetAmount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.BudgetAmount").msgclass
          LastPeriodAmount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.LastPeriodAmount").msgclass
          ThresholdRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.ThresholdRule").msgclass
          ThresholdRule::Basis = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.ThresholdRule.Basis").enummodule
          AllUpdatesRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.AllUpdatesRule").msgclass
          Filter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.Filter").msgclass
          Filter::CreditTypesTreatment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.Filter.CreditTypesTreatment").enummodule
          CustomPeriod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.CustomPeriod").msgclass
          CalendarPeriod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1beta1.CalendarPeriod").enummodule
        end
      end
    end
  end
end
