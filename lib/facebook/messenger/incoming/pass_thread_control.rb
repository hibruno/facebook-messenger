module Facebook
  module Messenger
    module Incoming
      # This callback will occur when thread ownership for a user has been passed to your application.
      #
      # @see https://developers.facebook.com/docs/messenger-platform/handover-protocol/pass-thread-control.
      class PassThreadControl
        include Facebook::Messenger::Incoming::Common

        def new_owner_app_id
          @messaging['pass_thread_control']['new_owner_app_id']
        end

        def metadata
          @messaging['pass_thread_control']['metadata']
        end
      end
    end
  end
end
