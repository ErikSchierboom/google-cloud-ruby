# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/iam/v1/policy.proto

require 'google/protobuf'

require 'google/type/expr_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/iam/v1/policy.proto", :syntax => :proto3) do
    add_message "google.iam.v1.Policy" do
      optional :version, :int32, 1
      repeated :bindings, :message, 4, "google.iam.v1.Binding"
      repeated :audit_configs, :message, 6, "google.iam.v1.AuditConfig"
      optional :etag, :bytes, 3
    end
    add_message "google.iam.v1.Binding" do
      optional :role, :string, 1
      repeated :members, :string, 2
      optional :condition, :message, 3, "google.type.Expr"
    end
    add_message "google.iam.v1.AuditConfig" do
      optional :service, :string, 1
      repeated :audit_log_configs, :message, 3, "google.iam.v1.AuditLogConfig"
    end
    add_message "google.iam.v1.AuditLogConfig" do
      optional :log_type, :enum, 1, "google.iam.v1.AuditLogConfig.LogType"
      repeated :exempted_members, :string, 2
    end
    add_enum "google.iam.v1.AuditLogConfig.LogType" do
      value :LOG_TYPE_UNSPECIFIED, 0
      value :ADMIN_READ, 1
      value :DATA_WRITE, 2
      value :DATA_READ, 3
    end
    add_message "google.iam.v1.PolicyDelta" do
      repeated :binding_deltas, :message, 1, "google.iam.v1.BindingDelta"
      repeated :audit_config_deltas, :message, 2, "google.iam.v1.AuditConfigDelta"
    end
    add_message "google.iam.v1.BindingDelta" do
      optional :action, :enum, 1, "google.iam.v1.BindingDelta.Action"
      optional :role, :string, 2
      optional :member, :string, 3
      optional :condition, :message, 4, "google.type.Expr"
    end
    add_enum "google.iam.v1.BindingDelta.Action" do
      value :ACTION_UNSPECIFIED, 0
      value :ADD, 1
      value :REMOVE, 2
    end
    add_message "google.iam.v1.AuditConfigDelta" do
      optional :action, :enum, 1, "google.iam.v1.AuditConfigDelta.Action"
      optional :service, :string, 2
      optional :exempted_member, :string, 3
      optional :log_type, :string, 4
    end
    add_enum "google.iam.v1.AuditConfigDelta.Action" do
      value :ACTION_UNSPECIFIED, 0
      value :ADD, 1
      value :REMOVE, 2
    end
  end
end

module Google
  module Iam
    module V1
      Policy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.Policy").msgclass
      Binding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.Binding").msgclass
      AuditConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.AuditConfig").msgclass
      AuditLogConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.AuditLogConfig").msgclass
      AuditLogConfig::LogType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.AuditLogConfig.LogType").enummodule
      PolicyDelta = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.PolicyDelta").msgclass
      BindingDelta = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.BindingDelta").msgclass
      BindingDelta::Action = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.BindingDelta.Action").enummodule
      AuditConfigDelta = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.AuditConfigDelta").msgclass
      AuditConfigDelta::Action = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.AuditConfigDelta.Action").enummodule
    end
  end
end