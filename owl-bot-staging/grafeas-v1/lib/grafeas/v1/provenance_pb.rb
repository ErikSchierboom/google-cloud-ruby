# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: grafeas/v1/provenance.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("grafeas/v1/provenance.proto", :syntax => :proto3) do
    add_message "grafeas.v1.BuildProvenance" do
      optional :id, :string, 1
      optional :project_id, :string, 2
      repeated :commands, :message, 3, "grafeas.v1.Command"
      repeated :built_artifacts, :message, 4, "grafeas.v1.Artifact"
      optional :create_time, :message, 5, "google.protobuf.Timestamp"
      optional :start_time, :message, 6, "google.protobuf.Timestamp"
      optional :end_time, :message, 7, "google.protobuf.Timestamp"
      optional :creator, :string, 8
      optional :logs_uri, :string, 9
      optional :source_provenance, :message, 10, "grafeas.v1.Source"
      optional :trigger_id, :string, 11
      map :build_options, :string, :string, 12
      optional :builder_version, :string, 13
    end
    add_message "grafeas.v1.Source" do
      optional :artifact_storage_source_uri, :string, 1
      map :file_hashes, :string, :message, 2, "grafeas.v1.FileHashes"
      optional :context, :message, 3, "grafeas.v1.SourceContext"
      repeated :additional_contexts, :message, 4, "grafeas.v1.SourceContext"
    end
    add_message "grafeas.v1.FileHashes" do
      repeated :file_hash, :message, 1, "grafeas.v1.Hash"
    end
    add_message "grafeas.v1.Hash" do
      optional :type, :string, 1
      optional :value, :bytes, 2
    end
    add_message "grafeas.v1.Command" do
      optional :name, :string, 1
      repeated :env, :string, 2
      repeated :args, :string, 3
      optional :dir, :string, 4
      optional :id, :string, 5
      repeated :wait_for, :string, 6
    end
    add_message "grafeas.v1.Artifact" do
      optional :checksum, :string, 1
      optional :id, :string, 2
      repeated :names, :string, 3
    end
    add_message "grafeas.v1.SourceContext" do
      map :labels, :string, :string, 4
      oneof :context do
        optional :cloud_repo, :message, 1, "grafeas.v1.CloudRepoSourceContext"
        optional :gerrit, :message, 2, "grafeas.v1.GerritSourceContext"
        optional :git, :message, 3, "grafeas.v1.GitSourceContext"
      end
    end
    add_message "grafeas.v1.AliasContext" do
      optional :kind, :enum, 1, "grafeas.v1.AliasContext.Kind"
      optional :name, :string, 2
    end
    add_enum "grafeas.v1.AliasContext.Kind" do
      value :KIND_UNSPECIFIED, 0
      value :FIXED, 1
      value :MOVABLE, 2
      value :OTHER, 4
    end
    add_message "grafeas.v1.CloudRepoSourceContext" do
      optional :repo_id, :message, 1, "grafeas.v1.RepoId"
      oneof :revision do
        optional :revision_id, :string, 2
        optional :alias_context, :message, 3, "grafeas.v1.AliasContext"
      end
    end
    add_message "grafeas.v1.GerritSourceContext" do
      optional :host_uri, :string, 1
      optional :gerrit_project, :string, 2
      oneof :revision do
        optional :revision_id, :string, 3
        optional :alias_context, :message, 4, "grafeas.v1.AliasContext"
      end
    end
    add_message "grafeas.v1.GitSourceContext" do
      optional :url, :string, 1
      optional :revision_id, :string, 2
    end
    add_message "grafeas.v1.RepoId" do
      oneof :id do
        optional :project_repo_id, :message, 1, "grafeas.v1.ProjectRepoId"
        optional :uid, :string, 2
      end
    end
    add_message "grafeas.v1.ProjectRepoId" do
      optional :project_id, :string, 1
      optional :repo_name, :string, 2
    end
  end
end

module Grafeas
  module V1
    BuildProvenance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.BuildProvenance").msgclass
    Source = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Source").msgclass
    FileHashes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.FileHashes").msgclass
    Hash = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Hash").msgclass
    Command = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Command").msgclass
    Artifact = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Artifact").msgclass
    SourceContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.SourceContext").msgclass
    AliasContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.AliasContext").msgclass
    AliasContext::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.AliasContext.Kind").enummodule
    CloudRepoSourceContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.CloudRepoSourceContext").msgclass
    GerritSourceContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.GerritSourceContext").msgclass
    GitSourceContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.GitSourceContext").msgclass
    RepoId = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.RepoId").msgclass
    ProjectRepoId = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ProjectRepoId").msgclass
  end
end
