# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module DataCatalog
      module V1
        # Specification for the BigQuery connection.
        # @!attribute [rw] connection_type
        #   @return [::Google::Cloud::DataCatalog::V1::BigQueryConnectionSpec::ConnectionType]
        #     The type of the BigQuery connection.
        # @!attribute [rw] cloud_sql
        #   @return [::Google::Cloud::DataCatalog::V1::CloudSqlBigQueryConnectionSpec]
        #     Specification for the BigQuery connection to a Cloud SQL instance.
        # @!attribute [rw] has_credential
        #   @return [::Boolean]
        #     True if there are credentials attached to the BigQuery connection; false
        #     otherwise.
        class BigQueryConnectionSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The type of the BigQuery connection.
          module ConnectionType
            # Unspecified type.
            CONNECTION_TYPE_UNSPECIFIED = 0

            # Cloud SQL connection.
            CLOUD_SQL = 1
          end
        end

        # Specification for the BigQuery connection to a Cloud SQL instance.
        # @!attribute [rw] instance_id
        #   @return [::String]
        #     Cloud SQL instance ID in the format of `project:location:instance`.
        # @!attribute [rw] database
        #   @return [::String]
        #     Database name.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::DataCatalog::V1::CloudSqlBigQueryConnectionSpec::DatabaseType]
        #     Type of the Cloud SQL database.
        class CloudSqlBigQueryConnectionSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Supported Cloud SQL database types.
          module DatabaseType
            # Unspecified database type.
            DATABASE_TYPE_UNSPECIFIED = 0

            # Cloud SQL for PostgreSQL.
            POSTGRES = 1

            # Cloud SQL for MySQL.
            MYSQL = 2
          end
        end

        # Fields specific for BigQuery routines.
        # @!attribute [rw] imported_libraries
        #   @return [::Array<::String>]
        #     Paths of the imported libraries.
        class BigQueryRoutineSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
