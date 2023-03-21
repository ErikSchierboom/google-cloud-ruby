# frozen_string_literal: true

# Copyright 2020 Google LLC
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
        # Represents a schema, for example, a BigQuery, GoogleSQL, or Avro schema.
        # @!attribute [rw] columns
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::ColumnSchema>]
        #     The unified GoogleSQL-like schema of columns.
        #
        #     The overall maximum number of columns and nested columns is 10,000.
        #     The maximum nested depth is 15 levels.
        class Schema
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A column within a schema. Columns can be nested inside
        # other columns.
        # @!attribute [rw] column
        #   @return [::String]
        #     Required. Name of the column.
        #
        #     Must be a UTF-8 string without dots (.).
        #     The maximum size is 64 bytes.
        # @!attribute [rw] type
        #   @return [::String]
        #     Required. Type of the column.
        #
        #     Must be a UTF-8 string with the maximum size of 128 bytes.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of the column. Default value is an empty string.
        #
        #     The description must be a UTF-8 string with the maximum size of 2000
        #     bytes.
        # @!attribute [rw] mode
        #   @return [::String]
        #     Optional. A column's mode indicates whether values in this column are
        #     required, nullable, or repeated.
        #
        #     Only `NULLABLE`, `REQUIRED`, and `REPEATED` values are supported.
        #     Default mode is `NULLABLE`.
        # @!attribute [rw] default_value
        #   @return [::String]
        #     Optional. Default value for the column.
        # @!attribute [rw] ordinal_position
        #   @return [::Integer]
        #     Optional. Ordinal position
        # @!attribute [rw] highest_indexing_type
        #   @return [::Google::Cloud::DataCatalog::V1::ColumnSchema::IndexingType]
        #     Optional. Most important inclusion of this column.
        # @!attribute [rw] subcolumns
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::ColumnSchema>]
        #     Optional. Schema of sub-columns. A column can have zero or more
        #     sub-columns.
        # @!attribute [rw] looker_column_spec
        #   @return [::Google::Cloud::DataCatalog::V1::ColumnSchema::LookerColumnSpec]
        #     Looker specific column info of this column.
        # @!attribute [rw] gc_rule
        #   @return [::String]
        #     Optional. Garbage collection policy for the column or column family.
        #     Applies to systems like Cloud Bigtable.
        class ColumnSchema
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Column info specific to Looker System.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::DataCatalog::V1::ColumnSchema::LookerColumnSpec::LookerColumnType]
          #     Looker specific column type of this column.
          class LookerColumnSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Column type in Looker.
            module LookerColumnType
              # Unspecified.
              LOOKER_COLUMN_TYPE_UNSPECIFIED = 0

              # Dimension.
              DIMENSION = 1

              # Dimension group - parent for Dimension.
              DIMENSION_GROUP = 2

              # Filter.
              FILTER = 3

              # Measure.
              MEASURE = 4

              # Parameter.
              PARAMETER = 5
            end
          end

          # Specifies inclusion of the column in an index
          module IndexingType
            # Unspecified.
            INDEXING_TYPE_UNSPECIFIED = 0

            # Column not a part of an index.
            INDEXING_TYPE_NONE = 1

            # Column Part of non unique index.
            INDEXING_TYPE_NON_UNIQUE = 2

            # Column part of unique index.
            INDEXING_TYPE_UNIQUE = 3

            # Column part of the primary key.
            INDEXING_TYPE_PRIMARY_KEY = 4
          end
        end
      end
    end
  end
end
