# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/metastore/v1/metastore.proto for package 'google.cloud.metastore.v1'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/metastore/v1/metastore_pb'

module Google
  module Cloud
    module Metastore
      module V1
        module DataprocMetastore
          # Configures and manages metastore services.
          # Metastore services are fully managed, highly available, autoscaled,
          # autohealing, OSS-native deployments of technical metadata management
          # software. Each metastore service exposes a network endpoint through which
          # metadata queries are served. Metadata queries can originate from a variety
          # of sources, including Apache Hive, Apache Presto, and Apache Spark.
          #
          # The Dataproc Metastore API defines the following resource model:
          #
          # * The service works with a collection of Google Cloud projects, named:
          # `/projects/*`
          # * Each project has a collection of available locations, named: `/locations/*`
          #   (a location must refer to a Google Cloud `region`)
          # * Each location has a collection of services, named: `/services/*`
          # * Dataproc Metastore services are resources with names of the form:
          #
          #   `/projects/{project_number}/locations/{location_id}/services/{service_id}`.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.metastore.v1.DataprocMetastore'

            # Lists services in a project and location.
            rpc :ListServices, ::Google::Cloud::Metastore::V1::ListServicesRequest, ::Google::Cloud::Metastore::V1::ListServicesResponse
            # Gets the details of a single service.
            rpc :GetService, ::Google::Cloud::Metastore::V1::GetServiceRequest, ::Google::Cloud::Metastore::V1::Service
            # Creates a metastore service in a project and location.
            rpc :CreateService, ::Google::Cloud::Metastore::V1::CreateServiceRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single service.
            rpc :UpdateService, ::Google::Cloud::Metastore::V1::UpdateServiceRequest, ::Google::Longrunning::Operation
            # Deletes a single service.
            rpc :DeleteService, ::Google::Cloud::Metastore::V1::DeleteServiceRequest, ::Google::Longrunning::Operation
            # Lists imports in a service.
            rpc :ListMetadataImports, ::Google::Cloud::Metastore::V1::ListMetadataImportsRequest, ::Google::Cloud::Metastore::V1::ListMetadataImportsResponse
            # Gets details of a single import.
            rpc :GetMetadataImport, ::Google::Cloud::Metastore::V1::GetMetadataImportRequest, ::Google::Cloud::Metastore::V1::MetadataImport
            # Creates a new MetadataImport in a given project and location.
            rpc :CreateMetadataImport, ::Google::Cloud::Metastore::V1::CreateMetadataImportRequest, ::Google::Longrunning::Operation
            # Updates a single import.
            # Only the description field of MetadataImport is supported to be updated.
            rpc :UpdateMetadataImport, ::Google::Cloud::Metastore::V1::UpdateMetadataImportRequest, ::Google::Longrunning::Operation
            # Exports metadata from a service.
            rpc :ExportMetadata, ::Google::Cloud::Metastore::V1::ExportMetadataRequest, ::Google::Longrunning::Operation
            # Restores a service from a backup.
            rpc :RestoreService, ::Google::Cloud::Metastore::V1::RestoreServiceRequest, ::Google::Longrunning::Operation
            # Lists backups in a service.
            rpc :ListBackups, ::Google::Cloud::Metastore::V1::ListBackupsRequest, ::Google::Cloud::Metastore::V1::ListBackupsResponse
            # Gets details of a single backup.
            rpc :GetBackup, ::Google::Cloud::Metastore::V1::GetBackupRequest, ::Google::Cloud::Metastore::V1::Backup
            # Creates a new backup in a given project and location.
            rpc :CreateBackup, ::Google::Cloud::Metastore::V1::CreateBackupRequest, ::Google::Longrunning::Operation
            # Deletes a single backup.
            rpc :DeleteBackup, ::Google::Cloud::Metastore::V1::DeleteBackupRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
