# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/secrets/v1beta1/resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n,google/cloud/secrets/v1beta1/resources.proto\x12\x1cgoogle.cloud.secrets.v1beta1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xda\x02\n\x06Secret\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12\x45\n\x0breplication\x18\x02 \x01(\x0b\x32).google.cloud.secrets.v1beta1.ReplicationB\x05\xe2\x41\x02\x05\x02\x12\x35\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12@\n\x06labels\x18\x04 \x03(\x0b\x32\x30.google.cloud.secrets.v1beta1.Secret.LabelsEntry\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:M\xea\x41J\n#secretmanager.googleapis.com/Secret\x12#projects/{project}/secrets/{secret}\"\x94\x03\n\rSecretVersion\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12\x35\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x36\n\x0c\x64\x65stroy_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x46\n\x05state\x18\x04 \x01(\x0e\x32\x31.google.cloud.secrets.v1beta1.SecretVersion.StateB\x04\xe2\x41\x01\x03\"H\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x45NABLED\x10\x01\x12\x0c\n\x08\x44ISABLED\x10\x02\x12\r\n\tDESTROYED\x10\x03:n\xea\x41k\n*secretmanager.googleapis.com/SecretVersion\x12=projects/{project}/secrets/{secret}/versions/{secret_version}\"\xc6\x02\n\x0bReplication\x12H\n\tautomatic\x18\x01 \x01(\x0b\x32\x33.google.cloud.secrets.v1beta1.Replication.AutomaticH\x00\x12M\n\x0cuser_managed\x18\x02 \x01(\x0b\x32\x35.google.cloud.secrets.v1beta1.Replication.UserManagedH\x00\x1a\x0b\n\tAutomatic\x1a\x81\x01\n\x0bUserManaged\x12U\n\x08replicas\x18\x01 \x03(\x0b\x32=.google.cloud.secrets.v1beta1.Replication.UserManaged.ReplicaB\x04\xe2\x41\x01\x02\x1a\x1b\n\x07Replica\x12\x10\n\x08location\x18\x01 \x01(\tB\r\n\x0breplication\"\x1d\n\rSecretPayload\x12\x0c\n\x04\x64\x61ta\x18\x01 \x01(\x0c\x42\xf1\x01\n&com.google.cloud.secretmanager.v1beta1B\x0eResourcesProtoP\x01Z:cloud.google.com/go/secrets/apiv1beta1/secretspb;secretspb\xf8\x01\x01\xa2\x02\x03GSM\xaa\x02\"Google.Cloud.SecretManager.V1Beta1\xca\x02\"Google\\Cloud\\SecretManager\\V1beta1\xea\x02%Google::Cloud::SecretManager::V1beta1b\x06proto3"

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
    module SecretManager
      module V1beta1
        Secret = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secrets.v1beta1.Secret").msgclass
        SecretVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secrets.v1beta1.SecretVersion").msgclass
        SecretVersion::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secrets.v1beta1.SecretVersion.State").enummodule
        Replication = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secrets.v1beta1.Replication").msgclass
        Replication::Automatic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secrets.v1beta1.Replication.Automatic").msgclass
        Replication::UserManaged = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secrets.v1beta1.Replication.UserManaged").msgclass
        Replication::UserManaged::Replica = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secrets.v1beta1.Replication.UserManaged.Replica").msgclass
        SecretPayload = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secrets.v1beta1.SecretPayload").msgclass
      end
    end
  end
end
