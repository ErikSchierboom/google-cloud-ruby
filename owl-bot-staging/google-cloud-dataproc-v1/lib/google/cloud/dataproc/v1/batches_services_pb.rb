# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dataproc/v1/batches.proto for package 'google.cloud.dataproc.v1'
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
require 'google/cloud/dataproc/v1/batches_pb'

module Google
  module Cloud
    module Dataproc
      module V1
        module BatchController
          # The BatchController provides methods to manage batch workloads.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dataproc.v1.BatchController'

            # Creates a batch workload that executes asynchronously.
            rpc :CreateBatch, ::Google::Cloud::Dataproc::V1::CreateBatchRequest, ::Google::Longrunning::Operation
            # Gets the batch workload resource representation.
            rpc :GetBatch, ::Google::Cloud::Dataproc::V1::GetBatchRequest, ::Google::Cloud::Dataproc::V1::Batch
            # Lists batch workloads.
            rpc :ListBatches, ::Google::Cloud::Dataproc::V1::ListBatchesRequest, ::Google::Cloud::Dataproc::V1::ListBatchesResponse
            # Deletes the batch workload resource. If the batch is not in terminal state,
            # the delete fails and the response returns `FAILED_PRECONDITION`.
            rpc :DeleteBatch, ::Google::Cloud::Dataproc::V1::DeleteBatchRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
