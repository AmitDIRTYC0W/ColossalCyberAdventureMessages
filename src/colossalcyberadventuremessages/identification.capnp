@0xbdc27dbda2233e98;

struct IdentificationRequest {
  username @0 :Text;
  password @1 :Text;
  register @2 :Bool;
}

struct SuccessInformation {
  playerid @0 :UInt16;
  coinamount @1 :UInt16;
  xpamount @2 :UInt16;
  mushroomamount @3 :Uint16;
}

struct IdentificationResponse {
  enum FailureReason {
    invalidCredentials @0;
    userAlreadyLoggedIn @1;
    userBanned @2;
    usernameTaken @3;
  }

  union {
    failure :group {
      reason @0 :FailureReason;
    }
    success @1 :SuccessInformation;
  }
}

