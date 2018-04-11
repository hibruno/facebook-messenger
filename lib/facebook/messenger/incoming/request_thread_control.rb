module Facebook
  module Messenger
    module Incoming
      # This callback will be sent to the Primary Receiver app when a Secondary Receiver app calls the Request Thread Control API.
      # The Primary Receiver may then choose to honor the request and pass thread control, or ignore the request.
      #
      # @see https://developers.facebook.com/docs/messenger-platform/handover-protocol/request-thread-control
      class RequestThreadControl
        include Facebook::Messenger::Incoming::Common

        def requested_owner_app_id
          @messaging['request_thread_control']['requested_owner_app_id']
        end

        def metadata
          @messaging['request_thread_control']['metadata']
        end
      end
    end
  end
end
