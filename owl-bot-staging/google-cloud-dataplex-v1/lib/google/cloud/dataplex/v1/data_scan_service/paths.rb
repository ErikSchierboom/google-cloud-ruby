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
    module Dataplex
      module V1
        module DataScanService
          # Path helper methods for the DataScanService API.
          module Paths
            ##
            # Create a fully-qualified DataScan resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/dataScans/{dataScan}`
            #
            # @param project [String]
            # @param location [String]
            # @param dataScan [String]
            #
            # @return [::String]
            def data_scan_path project:, location:, dataScan:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/dataScans/#{dataScan}"
            end

            ##
            # Create a fully-qualified DataScanJob resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/dataScans/{dataScan}/jobs/{job}`
            #
            # @param project [String]
            # @param location [String]
            # @param dataScan [String]
            # @param job [String]
            #
            # @return [::String]
            def data_scan_job_path project:, location:, dataScan:, job:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "dataScan cannot contain /" if dataScan.to_s.include? "/"

              "projects/#{project}/locations/#{location}/dataScans/#{dataScan}/jobs/#{job}"
            end

            ##
            # Create a fully-qualified Entity resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/lakes/{lake}/zones/{zone}/entities/{entity}`
            #
            # @param project [String]
            # @param location [String]
            # @param lake [String]
            # @param zone [String]
            # @param entity [String]
            #
            # @return [::String]
            def entity_path project:, location:, lake:, zone:, entity:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "lake cannot contain /" if lake.to_s.include? "/"
              raise ::ArgumentError, "zone cannot contain /" if zone.to_s.include? "/"

              "projects/#{project}/locations/#{location}/lakes/#{lake}/zones/#{zone}/entities/#{entity}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            extend self
          end
        end
      end
    end
  end
end
