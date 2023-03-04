@0xbdc27dbda2233e98;

struct IdentificationRequest {
  username @0 :Text;
  password @1 :Text;
  register @2 :Bool;
}

struct IdentificationResponse {
  enum FailureReason {
    invalidCredentials @0;
    userAlreadyLoggedIn @1;
    userBanned @2;
  }

  union {
    faliure :group {
      reason @0 :FailureReason;
    }
    success :Void;
  }
}

