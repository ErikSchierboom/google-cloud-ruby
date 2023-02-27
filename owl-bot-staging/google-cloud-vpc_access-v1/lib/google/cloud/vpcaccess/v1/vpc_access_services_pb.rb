# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/vpcaccess/v1/vpc_access.proto for package 'Google.Cloud.VpcAccess.V1'
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
require 'google/cloud/vpcaccess/v1/vpc_access_pb'

module Google
  module Cloud
    module VpcAccess
      module V1
        module VpcAccessService
          # Serverless VPC Access API allows users to create and manage connectors for
          # App Engine, Cloud Functions and Cloud Run to have internal connections to
          # Virtual Private Cloud networks.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.vpcaccess.v1.VpcAccessService'

            # Creates a Serverless VPC Access connector, returns an operation.
            rpc :CreateConnector, ::Google::Cloud::VpcAccess::V1::CreateConnectorRequest, ::Google::Longrunning::Operation
            # Gets a Serverless VPC Access connector. Returns NOT_FOUND if the resource
            # does not exist.
            rpc :GetConnector, ::Google::Cloud::VpcAccess::V1::GetConnectorRequest, ::Google::Cloud::VpcAccess::V1::Connector
            # Lists Serverless VPC Access connectors.
            rpc :ListConnectors, ::Google::Cloud::VpcAccess::V1::ListConnectorsRequest, ::Google::Cloud::VpcAccess::V1::ListConnectorsResponse
            # Deletes a Serverless VPC Access connector. Returns NOT_FOUND if the
            # resource does not exist.
            rpc :DeleteConnector, ::Google::Cloud::VpcAccess::V1::DeleteConnectorRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
