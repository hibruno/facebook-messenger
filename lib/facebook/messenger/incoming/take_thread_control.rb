module Facebook
  module Messenger
    module Incoming
      # This callback will occur when thread ownership for a user has been taken away from your application.
      #
      # @see https://developers.facebook.com/docs/messenger-platform/handover-protocol/take-thread-control
      class TakeThreadControl
        include Facebook::Messenger::Incoming::Common

        def previous_owner_app_id
          @messaging['take_thread_control']['previous_owner_app_id']
        end

        def metadata
          @messaging['take_thread_control']['metadata']
        end
      end
    end
  end
end
