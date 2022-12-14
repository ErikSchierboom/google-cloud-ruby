# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dataproc/v1/node_groups.proto for package 'google.cloud.dataproc.v1'
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
require 'google/cloud/dataproc/v1/node_groups_pb'

module Google
  module Cloud
    module Dataproc
      module V1
        module NodeGroupController
          # The `NodeGroupControllerService` provides methods to manage node groups
          # of Compute Engine managed instances.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dataproc.v1.NodeGroupController'

            # Creates a node group in a cluster. The returned
            # [Operation.metadata][google.longrunning.Operation.metadata] is
            # [NodeGroupOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#nodegroupoperationmetadata).
            rpc :CreateNodeGroup, ::Google::Cloud::Dataproc::V1::CreateNodeGroupRequest, ::Google::Longrunning::Operation
            # Resizes a node group in a cluster. The returned
            # [Operation.metadata][google.longrunning.Operation.metadata] is
            # [NodeGroupOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#nodegroupoperationmetadata).
            rpc :ResizeNodeGroup, ::Google::Cloud::Dataproc::V1::ResizeNodeGroupRequest, ::Google::Longrunning::Operation
            # Gets the resource representation for a node group in a
            # cluster.
            rpc :GetNodeGroup, ::Google::Cloud::Dataproc::V1::GetNodeGroupRequest, ::Google::Cloud::Dataproc::V1::NodeGroup
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end