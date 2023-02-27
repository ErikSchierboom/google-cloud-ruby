# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/v2/entity_type.proto for package 'google.cloud.dialogflow.v2'
# Original file comments:
# Copyright 2022 Google LLC
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
require 'google/cloud/dialogflow/v2/entity_type_pb'

module Google
  module Cloud
    module Dialogflow
      module V2
        module EntityTypes
          # Service for managing [EntityTypes][google.cloud.dialogflow.v2.EntityType].
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dialogflow.v2.EntityTypes'

            # Returns the list of all entity types in the specified agent.
            rpc :ListEntityTypes, ::Google::Cloud::Dialogflow::V2::ListEntityTypesRequest, ::Google::Cloud::Dialogflow::V2::ListEntityTypesResponse
            # Retrieves the specified entity type.
            rpc :GetEntityType, ::Google::Cloud::Dialogflow::V2::GetEntityTypeRequest, ::Google::Cloud::Dialogflow::V2::EntityType
            # Creates an entity type in the specified agent.
            #
            # Note: You should always train an agent prior to sending it queries. See the
            # [training
            # documentation](https://cloud.google.com/dialogflow/es/docs/training).
            rpc :CreateEntityType, ::Google::Cloud::Dialogflow::V2::CreateEntityTypeRequest, ::Google::Cloud::Dialogflow::V2::EntityType
            # Updates the specified entity type.
            #
            # Note: You should always train an agent prior to sending it queries. See the
            # [training
            # documentation](https://cloud.google.com/dialogflow/es/docs/training).
            rpc :UpdateEntityType, ::Google::Cloud::Dialogflow::V2::UpdateEntityTypeRequest, ::Google::Cloud::Dialogflow::V2::EntityType
            # Deletes the specified entity type.
            #
            # Note: You should always train an agent prior to sending it queries. See the
            # [training
            # documentation](https://cloud.google.com/dialogflow/es/docs/training).
            rpc :DeleteEntityType, ::Google::Cloud::Dialogflow::V2::DeleteEntityTypeRequest, ::Google::Protobuf::Empty
            # Updates/Creates multiple entity types in the specified agent.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: An empty [Struct
            #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
            # - `response`:
            # [BatchUpdateEntityTypesResponse][google.cloud.dialogflow.v2.BatchUpdateEntityTypesResponse]
            #
            # Note: You should always train an agent prior to sending it queries. See the
            # [training
            # documentation](https://cloud.google.com/dialogflow/es/docs/training).
            rpc :BatchUpdateEntityTypes, ::Google::Cloud::Dialogflow::V2::BatchUpdateEntityTypesRequest, ::Google::Longrunning::Operation
            # Deletes entity types in the specified agent.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: An empty [Struct
            #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
            # - `response`: An [Empty
            #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
            #
            # Note: You should always train an agent prior to sending it queries. See the
            # [training
            # documentation](https://cloud.google.com/dialogflow/es/docs/training).
            rpc :BatchDeleteEntityTypes, ::Google::Cloud::Dialogflow::V2::BatchDeleteEntityTypesRequest, ::Google::Longrunning::Operation
            # Creates multiple new entities in the specified entity type.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: An empty [Struct
            #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
            # - `response`: An [Empty
            #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
            #
            # Note: You should always train an agent prior to sending it queries. See the
            # [training
            # documentation](https://cloud.google.com/dialogflow/es/docs/training).
            rpc :BatchCreateEntities, ::Google::Cloud::Dialogflow::V2::BatchCreateEntitiesRequest, ::Google::Longrunning::Operation
            # Updates or creates multiple entities in the specified entity type. This
            # method does not affect entities in the entity type that aren't explicitly
            # specified in the request.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: An empty [Struct
            #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
            # - `response`: An [Empty
            #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
            #
            # Note: You should always train an agent prior to sending it queries. See the
            # [training
            # documentation](https://cloud.google.com/dialogflow/es/docs/training).
            #
            rpc :BatchUpdateEntities, ::Google::Cloud::Dialogflow::V2::BatchUpdateEntitiesRequest, ::Google::Longrunning::Operation
            # Deletes entities in the specified entity type.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: An empty [Struct
            #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
            # - `response`: An [Empty
            #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
            #
            # Note: You should always train an agent prior to sending it queries. See the
            # [training
            # documentation](https://cloud.google.com/dialogflow/es/docs/training).
            rpc :BatchDeleteEntities, ::Google::Cloud::Dialogflow::V2::BatchDeleteEntitiesRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
