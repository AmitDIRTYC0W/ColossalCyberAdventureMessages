@0xbdc27dbda2233e98;

struct LogInRequest {
  username @0 :Text;
  password @1 :Text;
}

struct LogInResponse {
  enum FailureReason {
    invalidCredentials @0;
    userAlreadyLoggedIn @1;
    userBanned @2;
  }

  union {
    faliure :group {
      reason @0 :FailureReason;
    }
    success :group {
      servers @1 :List(UInt64);
    }
  }
}
