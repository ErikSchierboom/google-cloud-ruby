# frozen_string_literal: true

# Copyright 2022 Google LLC
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
        # Native schema used by a resource represented as an entry. Used by query
        # engines for deserializing and parsing source data.
        # @!attribute [rw] avro
        #   @return [::Google::Cloud::DataCatalog::V1::PhysicalSchema::AvroSchema]
        #     Schema in Avro JSON format.
        # @!attribute [rw] thrift
        #   @return [::Google::Cloud::DataCatalog::V1::PhysicalSchema::ThriftSchema]
        #     Schema in Thrift format.
        # @!attribute [rw] protobuf
        #   @return [::Google::Cloud::DataCatalog::V1::PhysicalSchema::ProtobufSchema]
        #     Schema in protocol buffer format.
        # @!attribute [rw] parquet
        #   @return [::Google::Cloud::DataCatalog::V1::PhysicalSchema::ParquetSchema]
        #     Marks a Parquet-encoded data source.
        # @!attribute [rw] orc
        #   @return [::Google::Cloud::DataCatalog::V1::PhysicalSchema::OrcSchema]
        #     Marks an ORC-encoded data source.
        # @!attribute [rw] csv
        #   @return [::Google::Cloud::DataCatalog::V1::PhysicalSchema::CsvSchema]
        #     Marks a CSV-encoded data source.
        class PhysicalSchema
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Schema in Avro JSON format.
          # @!attribute [rw] text
          #   @return [::String]
          #     JSON source of the Avro schema.
          class AvroSchema
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Schema in Thrift format.
          # @!attribute [rw] text
          #   @return [::String]
          #     Thrift IDL source of the schema.
          class ThriftSchema
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Schema in protocol buffer format.
          # @!attribute [rw] text
          #   @return [::String]
          #     Protocol buffer source of the schema.
          class ProtobufSchema
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Marks a Parquet-encoded data source.
          class ParquetSchema
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Marks an ORC-encoded data source.
          class OrcSchema
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Marks a CSV-encoded data source.
          class CsvSchema
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end

