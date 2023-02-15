using import "log_in_request_msg.capnp".LogInRequest;

struct LogInRequest {
  username @0 :Text;
  password @1 :Text;
}

struct LogInResponse {
  union {
    faliure :group {
      reason @0 :Reason;

      enum Reason {
        invalid_credentials @0;
        user_already_logged_in @1;
        user_banned @2;
      }
    }
    success :group {
      servers @0 :List(UInt64);
    }
  }
}
