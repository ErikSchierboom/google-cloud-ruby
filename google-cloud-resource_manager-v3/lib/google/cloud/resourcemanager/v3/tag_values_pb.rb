# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/resourcemanager/v3/tag_values.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n0google/cloud/resourcemanager/v3/tag_values.proto\x12\x1fgoogle.cloud.resourcemanager.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a#google/longrunning/operations.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xd8\x02\n\x08TagValue\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x05\x12\x14\n\x06parent\x18\x02 \x01(\tB\x04\xe2\x41\x01\x05\x12\x19\n\nshort_name\x18\x03 \x01(\tB\x05\xe2\x41\x02\x02\x05\x12\x1d\n\x0fnamespaced_name\x18\x04 \x01(\tB\x04\xe2\x41\x01\x03\x12\x19\n\x0b\x64\x65scription\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12\x35\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x35\n\x0bupdate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x12\n\x04\x65tag\x18\x08 \x01(\tB\x04\xe2\x41\x01\x01:K\xea\x41H\n,cloudresourcemanager.googleapis.com/TagValue\x12\x15tagValues/{tag_value}R\x01\x01\"e\n\x14ListTagValuesRequest\x12\x1a\n\x06parent\x18\x01 \x01(\tB\n\xe2\x41\x01\x02\xfa\x41\x03\x12\x01*\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x18\n\npage_token\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\"o\n\x15ListTagValuesResponse\x12=\n\ntag_values\x18\x01 \x03(\x0b\x32).google.cloud.resourcemanager.v3.TagValue\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"Y\n\x12GetTagValueRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe2\x41\x01\x02\xfa\x41.\n,cloudresourcemanager.googleapis.com/TagValue\"c\n\x1cGetNamespacedTagValueRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe2\x41\x01\x02\xfa\x41.\n,cloudresourcemanager.googleapis.com/TagValue\"x\n\x15\x43reateTagValueRequest\x12\x42\n\ttag_value\x18\x01 \x01(\x0b\x32).google.cloud.resourcemanager.v3.TagValueB\x04\xe2\x41\x01\x02\x12\x1b\n\rvalidate_only\x18\x02 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x18\n\x16\x43reateTagValueMetadata\"\xaf\x01\n\x15UpdateTagValueRequest\x12\x42\n\ttag_value\x18\x01 \x01(\x0b\x32).google.cloud.resourcemanager.v3.TagValueB\x04\xe2\x41\x01\x02\x12\x35\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x18\n\x16UpdateTagValueMetadata\"\x8d\x01\n\x15\x44\x65leteTagValueRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe2\x41\x01\x02\xfa\x41.\n,cloudresourcemanager.googleapis.com/TagValue\x12\x1b\n\rvalidate_only\x18\x02 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12\x12\n\x04\x65tag\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\"\x18\n\x16\x44\x65leteTagValueMetadata2\xac\r\n\tTagValues\x12\x9e\x01\n\rListTagValues\x12\x35.google.cloud.resourcemanager.v3.ListTagValuesRequest\x1a\x36.google.cloud.resourcemanager.v3.ListTagValuesResponse\"\x1e\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x0f\x12\r/v3/tagValues\x12\x94\x01\n\x0bGetTagValue\x12\x33.google.cloud.resourcemanager.v3.GetTagValueRequest\x1a).google.cloud.resourcemanager.v3.TagValue\"%\xda\x41\x04name\x82\xd3\xe4\x93\x02\x18\x12\x16/v3/{name=tagValues/*}\x12\xaa\x01\n\x15GetNamespacedTagValue\x12=.google.cloud.resourcemanager.v3.GetNamespacedTagValueRequest\x1a).google.cloud.resourcemanager.v3.TagValue\"\'\xda\x41\x04name\x82\xd3\xe4\x93\x02\x1a\x12\x18/v3/tagValues/namespaced\x12\xba\x01\n\x0e\x43reateTagValue\x12\x36.google.cloud.resourcemanager.v3.CreateTagValueRequest\x1a\x1d.google.longrunning.Operation\"Q\xca\x41\"\n\x08TagValue\x12\x16\x43reateTagValueMetadata\xda\x41\ttag_value\x82\xd3\xe4\x93\x02\x1a\"\r/v3/tagValues:\ttag_value\x12\xd9\x01\n\x0eUpdateTagValue\x12\x36.google.cloud.resourcemanager.v3.UpdateTagValueRequest\x1a\x1d.google.longrunning.Operation\"p\xca\x41\"\n\x08TagValue\x12\x16UpdateTagValueMetadata\xda\x41\x15tag_value,update_mask\x82\xd3\xe4\x93\x02-2 /v3/{tag_value.name=tagValues/*}:\ttag_value\x12\xb3\x01\n\x0e\x44\x65leteTagValue\x12\x36.google.cloud.resourcemanager.v3.DeleteTagValueRequest\x1a\x1d.google.longrunning.Operation\"J\xca\x41\"\n\x08TagValue\x12\x16\x44\x65leteTagValueMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x18*\x16/v3/{name=tagValues/*}\x12\x88\x01\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"=\xda\x41\x08resource\x82\xd3\xe4\x93\x02,\"\'/v3/{resource=tagValues/*}:getIamPolicy:\x01*\x12\x8f\x01\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"D\xda\x41\x0fresource,policy\x82\xd3\xe4\x93\x02,\"\'/v3/{resource=tagValues/*}:setIamPolicy:\x01*\x12\xba\x01\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"O\xda\x41\x14resource,permissions\x82\xd3\xe4\x93\x02\x32\"-/v3/{resource=tagValues/*}:testIamPermissions:\x01*\x1a\x90\x01\xca\x41#cloudresourcemanager.googleapis.com\xd2\x41ghttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/cloud-platform.read-onlyB\xef\x01\n#com.google.cloud.resourcemanager.v3B\x0eTagValuesProtoP\x01ZMcloud.google.com/go/resourcemanager/apiv3/resourcemanagerpb;resourcemanagerpb\xaa\x02\x1fGoogle.Cloud.ResourceManager.V3\xca\x02\x1fGoogle\\Cloud\\ResourceManager\\V3\xea\x02\"Google::Cloud::ResourceManager::V3b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module ResourceManager
      module V3
        TagValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.TagValue").msgclass
        ListTagValuesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.ListTagValuesRequest").msgclass
        ListTagValuesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.ListTagValuesResponse").msgclass
        GetTagValueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.GetTagValueRequest").msgclass
        GetNamespacedTagValueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.GetNamespacedTagValueRequest").msgclass
        CreateTagValueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.CreateTagValueRequest").msgclass
        CreateTagValueMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.CreateTagValueMetadata").msgclass
        UpdateTagValueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.UpdateTagValueRequest").msgclass
        UpdateTagValueMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.UpdateTagValueMetadata").msgclass
        DeleteTagValueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.DeleteTagValueRequest").msgclass
        DeleteTagValueMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.DeleteTagValueMetadata").msgclass
      end
    end
  end
end
