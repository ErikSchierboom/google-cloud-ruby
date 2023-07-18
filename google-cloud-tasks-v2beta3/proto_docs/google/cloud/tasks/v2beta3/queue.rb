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
    module Tasks
      module V2beta3
        # A queue is a container of related tasks. Queues are configured to manage
        # how those tasks are dispatched. Configurable properties include rate limits,
        # retry options, queue types, and others.
        # @!attribute [rw] name
        #   @return [::String]
        #     Caller-specified and required in
        #     {::Google::Cloud::Tasks::V2beta3::CloudTasks::Client#create_queue CreateQueue}, after
        #     which it becomes output only.
        #
        #     The queue name.
        #
        #     The queue name must have the following format:
        #     `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
        #
        #     * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]),
        #        hyphens (-), colons (:), or periods (.).
        #        For more information, see
        #        [Identifying
        #        projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
        #     * `LOCATION_ID` is the canonical ID for the queue's location.
        #        The list of available locations can be obtained by calling
        #        `::Google::Cloud::Location::Locations::Client#list_locations`.
        #        For more information, see https://cloud.google.com/about/locations/.
        #     * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or
        #       hyphens (-). The maximum length is 100 characters.
        # @!attribute [rw] app_engine_http_queue
        #   @return [::Google::Cloud::Tasks::V2beta3::AppEngineHttpQueue]
        #     {::Google::Cloud::Tasks::V2beta3::AppEngineHttpQueue AppEngineHttpQueue}
        #     settings apply only to [App Engine
        #     tasks][google.cloud.tasks.v2beta3.AppEngineHttpRequest] in this queue.
        #     {::Google::Cloud::Tasks::V2beta3::HttpRequest Http tasks} are not affected by
        #     this proto.
        # @!attribute [rw] http_target
        #   @return [::Google::Cloud::Tasks::V2beta3::HttpTarget]
        #     Modifies HTTP target for HTTP tasks.
        # @!attribute [rw] rate_limits
        #   @return [::Google::Cloud::Tasks::V2beta3::RateLimits]
        #     Rate limits for task dispatches.
        #
        #     {::Google::Cloud::Tasks::V2beta3::Queue#rate_limits rate_limits} and
        #     {::Google::Cloud::Tasks::V2beta3::Queue#retry_config retry_config} are related
        #     because they both control task attempts. However they control task attempts
        #     in different ways:
        #
        #     * {::Google::Cloud::Tasks::V2beta3::Queue#rate_limits rate_limits} controls the
        #     total rate of
        #       dispatches from a queue (i.e. all traffic dispatched from the
        #       queue, regardless of whether the dispatch is from a first
        #       attempt or a retry).
        #     * {::Google::Cloud::Tasks::V2beta3::Queue#retry_config retry_config} controls
        #     what happens to
        #       particular a task after its first attempt fails. That is,
        #       {::Google::Cloud::Tasks::V2beta3::Queue#retry_config retry_config} controls
        #       task retries (the second attempt, third attempt, etc).
        #
        #     The queue's actual dispatch rate is the result of:
        #
        #     * Number of tasks in the queue
        #     * User-specified throttling:
        #     {::Google::Cloud::Tasks::V2beta3::Queue#rate_limits rate_limits},
        #       {::Google::Cloud::Tasks::V2beta3::Queue#retry_config retry_config}, and the
        #       [queue's state][google.cloud.tasks.v2beta3.Queue.state].
        #     * System throttling due to `429` (Too Many Requests) or `503` (Service
        #       Unavailable) responses from the worker, high error rates, or to smooth
        #       sudden large traffic spikes.
        # @!attribute [rw] retry_config
        #   @return [::Google::Cloud::Tasks::V2beta3::RetryConfig]
        #     Settings that determine the retry behavior.
        #
        #     * For tasks created using Cloud Tasks: the queue-level retry settings
        #       apply to all tasks in the queue that were created using Cloud Tasks.
        #       Retry settings cannot be set on individual tasks.
        #     * For tasks created using the App Engine SDK: the queue-level retry
        #       settings apply to all tasks in the queue which do not have retry settings
        #       explicitly set on the task and were created by the App Engine SDK. See
        #       [App Engine
        #       documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Tasks::V2beta3::Queue::State]
        #     Output only. The state of the queue.
        #
        #     `state` can only be changed by called
        #     {::Google::Cloud::Tasks::V2beta3::CloudTasks::Client#pause_queue PauseQueue},
        #     {::Google::Cloud::Tasks::V2beta3::CloudTasks::Client#resume_queue ResumeQueue}, or
        #     uploading
        #     [queue.yaml/xml](https://cloud.google.com/appengine/docs/python/config/queueref).
        #     {::Google::Cloud::Tasks::V2beta3::CloudTasks::Client#update_queue UpdateQueue} cannot be
        #     used to change `state`.
        # @!attribute [rw] purge_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last time this queue was purged.
        #
        #     All tasks that were {::Google::Cloud::Tasks::V2beta3::Task#create_time created}
        #     before this time were purged.
        #
        #     A queue can be purged using
        #     {::Google::Cloud::Tasks::V2beta3::CloudTasks::Client#purge_queue PurgeQueue}, the [App
        #     Engine Task Queue SDK, or the Cloud
        #     Console](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/deleting-tasks-and-queues#purging_all_tasks_from_a_queue).
        #
        #     Purge time will be truncated to the nearest microsecond. Purge
        #     time will be unset if the queue has never been purged.
        # @!attribute [rw] task_ttl
        #   @return [::Google::Protobuf::Duration]
        #     The maximum amount of time that a task will be retained in
        #     this queue.
        #
        #     Queues created by Cloud Tasks have a default `task_ttl` of 31 days.
        #     After a task has lived for `task_ttl`, the task will be deleted
        #     regardless of whether it was dispatched or not.
        #
        #     The `task_ttl` for queues created via queue.yaml/xml is equal to the
        #     maximum duration because there is a
        #     [storage quota](https://cloud.google.com/appengine/quotas#Task_Queue) for
        #     these queues. To view the maximum valid duration, see the documentation for
        #     {::Google::Protobuf::Duration Duration}.
        # @!attribute [rw] tombstone_ttl
        #   @return [::Google::Protobuf::Duration]
        #     The task tombstone time to live (TTL).
        #
        #     After a task is deleted or executed, the task's tombstone is
        #     retained for the length of time specified by `tombstone_ttl`.
        #     The tombstone is used by task de-duplication; another task with the same
        #     name can't be created until the tombstone has expired. For more information
        #     about task de-duplication, see the documentation for
        #     {::Google::Cloud::Tasks::V2beta3::CreateTaskRequest#task CreateTaskRequest}.
        #
        #     Queues created by Cloud Tasks have a default `tombstone_ttl` of 1 hour.
        # @!attribute [rw] stackdriver_logging_config
        #   @return [::Google::Cloud::Tasks::V2beta3::StackdriverLoggingConfig]
        #     Configuration options for writing logs to
        #     [Stackdriver Logging](https://cloud.google.com/logging/docs/). If this
        #     field is unset, then no logs are written.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Tasks::V2beta3::Queue::Type]
        #     Immutable. The type of a queue (push or pull).
        #
        #     `Queue.type` is an immutable property of the queue that is set at the queue
        #     creation time. When left unspecified, the default value of `PUSH` is
        #     selected.
        # @!attribute [r] stats
        #   @return [::Google::Cloud::Tasks::V2beta3::QueueStats]
        #     Output only. The realtime, informational statistics for a queue. In order
        #     to receive the statistics the caller should include this field in the
        #     FieldMask.
        class Queue
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # State of the queue.
          module State
            # Unspecified state.
            STATE_UNSPECIFIED = 0

            # The queue is running. Tasks can be dispatched.
            #
            # If the queue was created using Cloud Tasks and the queue has
            # had no activity (method calls or task dispatches) for 30 days,
            # the queue may take a few minutes to re-activate. Some method
            # calls may return [NOT_FOUND][google.rpc.Code.NOT_FOUND] and
            # tasks may not be dispatched for a few minutes until the queue
            # has been re-activated.
            RUNNING = 1

            # Tasks are paused by the user. If the queue is paused then Cloud
            # Tasks will stop delivering tasks from it, but more tasks can
            # still be added to it by the user.
            PAUSED = 2

            # The queue is disabled.
            #
            # A queue becomes `DISABLED` when
            # [queue.yaml](https://cloud.google.com/appengine/docs/python/config/queueref)
            # or
            # [queue.xml](https://cloud.google.com/appengine/docs/standard/java/config/queueref)
            # is uploaded which does not contain the queue. You cannot directly disable
            # a queue.
            #
            # When a queue is disabled, tasks can still be added to a queue
            # but the tasks are not dispatched.
            #
            # To permanently delete this queue and all of its tasks, call
            # {::Google::Cloud::Tasks::V2beta3::CloudTasks::Client#delete_queue DeleteQueue}.
            DISABLED = 3
          end

          # The type of the queue.
          module Type
            # Default value.
            TYPE_UNSPECIFIED = 0

            # A pull queue.
            PULL = 1

            # A push queue.
            PUSH = 2
          end
        end

        # Rate limits.
        #
        # This message determines the maximum rate that tasks can be dispatched by a
        # queue, regardless of whether the dispatch is a first task attempt or a retry.
        #
        # Note: The debugging command,
        # {::Google::Cloud::Tasks::V2beta3::CloudTasks::Client#run_task RunTask}, will run a task
        # even if the queue has reached its
        # {::Google::Cloud::Tasks::V2beta3::RateLimits RateLimits}.
        # @!attribute [rw] max_dispatches_per_second
        #   @return [::Float]
        #     The maximum rate at which tasks are dispatched from this queue.
        #
        #     If unspecified when the queue is created, Cloud Tasks will pick the
        #     default.
        #
        #     * For {::Google::Cloud::Tasks::V2beta3::AppEngineHttpQueue App Engine queues},
        #     the maximum allowed value
        #       is 500.
        #
        #
        #     This field has the same meaning as
        #     [rate in
        #     queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#rate).
        # @!attribute [rw] max_burst_size
        #   @return [::Integer]
        #     The max burst size.
        #
        #     Max burst size limits how fast tasks in queue are processed when
        #     many tasks are in the queue and the rate is high. This field
        #     allows the queue to have a high rate so processing starts shortly
        #     after a task is enqueued, but still limits resource usage when
        #     many tasks are enqueued in a short period of time.
        #
        #     The [token bucket](https://wikipedia.org/wiki/Token_Bucket)
        #     algorithm is used to control the rate of task dispatches. Each
        #     queue has a token bucket that holds tokens, up to the maximum
        #     specified by `max_burst_size`. Each time a task is dispatched, a
        #     token is removed from the bucket. Tasks will be dispatched until
        #     the queue's bucket runs out of tokens. The bucket will be
        #     continuously refilled with new tokens based on
        #     {::Google::Cloud::Tasks::V2beta3::RateLimits#max_dispatches_per_second max_dispatches_per_second}.
        #
        #     The default value of `max_burst_size` is picked by Cloud Tasks
        #     based on the value of
        #     {::Google::Cloud::Tasks::V2beta3::RateLimits#max_dispatches_per_second max_dispatches_per_second}.
        #
        #     The maximum value of `max_burst_size` is 500.
        #
        #     For App Engine queues that were created or updated using
        #     `queue.yaml/xml`, `max_burst_size` is equal to
        #     [bucket_size](https://cloud.google.com/appengine/docs/standard/python/config/queueref#bucket_size).
        #     If
        #     {::Google::Cloud::Tasks::V2beta3::CloudTasks::Client#update_queue UpdateQueue} is called
        #     on a queue without explicitly setting a value for `max_burst_size`,
        #     `max_burst_size` value will get updated if
        #     {::Google::Cloud::Tasks::V2beta3::CloudTasks::Client#update_queue UpdateQueue} is
        #     updating
        #     {::Google::Cloud::Tasks::V2beta3::RateLimits#max_dispatches_per_second max_dispatches_per_second}.
        # @!attribute [rw] max_concurrent_dispatches
        #   @return [::Integer]
        #     The maximum number of concurrent tasks that Cloud Tasks allows
        #     to be dispatched for this queue. After this threshold has been
        #     reached, Cloud Tasks stops dispatching tasks until the number of
        #     concurrent requests decreases.
        #
        #     If unspecified when the queue is created, Cloud Tasks will pick the
        #     default.
        #
        #
        #     The maximum allowed value is 5,000.
        #
        #
        #     This field has the same meaning as
        #     [max_concurrent_requests in
        #     queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#max_concurrent_requests).
        class RateLimits
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Retry config.
        #
        # These settings determine when a failed task attempt is retried.
        # @!attribute [rw] max_attempts
        #   @return [::Integer]
        #     Number of attempts per task.
        #
        #     Cloud Tasks will attempt the task `max_attempts` times (that is, if the
        #     first attempt fails, then there will be `max_attempts - 1` retries). Must
        #     be >= -1.
        #
        #     If unspecified when the queue is created, Cloud Tasks will pick the
        #     default.
        #
        #     -1 indicates unlimited attempts.
        #
        #     This field has the same meaning as
        #     [task_retry_limit in
        #     queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
        # @!attribute [rw] max_retry_duration
        #   @return [::Google::Protobuf::Duration]
        #     If positive, `max_retry_duration` specifies the time limit for
        #     retrying a failed task, measured from when the task was first
        #     attempted. Once `max_retry_duration` time has passed *and* the
        #     task has been attempted
        #     {::Google::Cloud::Tasks::V2beta3::RetryConfig#max_attempts max_attempts} times,
        #     no further attempts will be made and the task will be deleted.
        #
        #     If zero, then the task age is unlimited.
        #
        #     If unspecified when the queue is created, Cloud Tasks will pick the
        #     default.
        #
        #
        #     `max_retry_duration` will be truncated to the nearest second.
        #
        #     This field has the same meaning as
        #     [task_age_limit in
        #     queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
        # @!attribute [rw] min_backoff
        #   @return [::Google::Protobuf::Duration]
        #     A task will be {::Google::Cloud::Tasks::V2beta3::Task#schedule_time scheduled}
        #     for retry between
        #     {::Google::Cloud::Tasks::V2beta3::RetryConfig#min_backoff min_backoff} and
        #     {::Google::Cloud::Tasks::V2beta3::RetryConfig#max_backoff max_backoff} duration
        #     after it fails, if the queue's
        #     {::Google::Cloud::Tasks::V2beta3::RetryConfig RetryConfig} specifies that the
        #     task should be retried.
        #
        #     If unspecified when the queue is created, Cloud Tasks will pick the
        #     default.
        #
        #
        #     `min_backoff` will be truncated to the nearest second.
        #
        #     This field has the same meaning as
        #     [min_backoff_seconds in
        #     queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
        # @!attribute [rw] max_backoff
        #   @return [::Google::Protobuf::Duration]
        #     A task will be {::Google::Cloud::Tasks::V2beta3::Task#schedule_time scheduled}
        #     for retry between
        #     {::Google::Cloud::Tasks::V2beta3::RetryConfig#min_backoff min_backoff} and
        #     {::Google::Cloud::Tasks::V2beta3::RetryConfig#max_backoff max_backoff} duration
        #     after it fails, if the queue's
        #     {::Google::Cloud::Tasks::V2beta3::RetryConfig RetryConfig} specifies that the
        #     task should be retried.
        #
        #     If unspecified when the queue is created, Cloud Tasks will pick the
        #     default.
        #
        #
        #     `max_backoff` will be truncated to the nearest second.
        #
        #     This field has the same meaning as
        #     [max_backoff_seconds in
        #     queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
        # @!attribute [rw] max_doublings
        #   @return [::Integer]
        #     The time between retries will double `max_doublings` times.
        #
        #     A task's retry interval starts at
        #     {::Google::Cloud::Tasks::V2beta3::RetryConfig#min_backoff min_backoff}, then
        #     doubles `max_doublings` times, then increases linearly, and finally retries
        #     at intervals of
        #     {::Google::Cloud::Tasks::V2beta3::RetryConfig#max_backoff max_backoff} up to
        #     {::Google::Cloud::Tasks::V2beta3::RetryConfig#max_attempts max_attempts} times.
        #
        #     For example, if
        #     {::Google::Cloud::Tasks::V2beta3::RetryConfig#min_backoff min_backoff} is 10s,
        #     {::Google::Cloud::Tasks::V2beta3::RetryConfig#max_backoff max_backoff} is 300s,
        #     and `max_doublings` is 3, then the a task will first be retried in 10s. The
        #     retry interval will double three times, and then increase linearly by 2^3 *
        #     10s.  Finally, the task will retry at intervals of
        #     {::Google::Cloud::Tasks::V2beta3::RetryConfig#max_backoff max_backoff} until the
        #     task has been attempted
        #     {::Google::Cloud::Tasks::V2beta3::RetryConfig#max_attempts max_attempts} times.
        #     Thus, the requests will retry at 10s, 20s, 40s, 80s, 160s, 240s, 300s,
        #     300s, ....
        #
        #     If unspecified when the queue is created, Cloud Tasks will pick the
        #     default.
        #
        #
        #     This field has the same meaning as
        #     [max_doublings in
        #     queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#retry_parameters).
        class RetryConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration options for writing logs to
        # [Stackdriver Logging](https://cloud.google.com/logging/docs/).
        # @!attribute [rw] sampling_ratio
        #   @return [::Float]
        #     Specifies the fraction of operations to write to
        #     [Stackdriver Logging](https://cloud.google.com/logging/docs/).
        #     This field may contain any value between 0.0 and 1.0, inclusive.
        #     0.0 is the default and means that no operations are logged.
        class StackdriverLoggingConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Statistics for a queue.
        # @!attribute [r] tasks_count
        #   @return [::Integer]
        #     Output only. An estimation of the number of tasks in the queue, that is,
        #     the tasks in the queue that haven't been executed, the tasks in the queue
        #     which the queue has dispatched but has not yet received a reply for, and
        #     the failed tasks that the queue is retrying.
        # @!attribute [r] oldest_estimated_arrival_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. An estimation of the nearest time in the future where a task
        #     in the queue is scheduled to be executed.
        # @!attribute [r] executed_last_minute_count
        #   @return [::Integer]
        #     Output only. The number of tasks that the queue has dispatched and received
        #     a reply for during the last minute. This variable counts both successful
        #     and non-successful executions.
        # @!attribute [r] concurrent_dispatches_count
        #   @return [::Integer]
        #     Output only. The number of requests that the queue has dispatched but has
        #     not received a reply for yet.
        # @!attribute [r] effective_execution_rate
        #   @return [::Float]
        #     Output only. The current maximum number of tasks per second executed by the
        #     queue. The maximum value of this variable is controlled by the RateLimits
        #     of the Queue. However, this value could be less to avoid overloading the
        #     endpoints tasks in the queue are targeting.
        class QueueStats
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
