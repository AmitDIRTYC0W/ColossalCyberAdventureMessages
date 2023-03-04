@0xd291577ed19870fa;

struct ServerChatMessage {
  username @0 :Text;
  contents @1 :Text;
}

struct ServerUpdate {
  union {
    chatMessage @0 :ServerChatMessage;
    delme @1 :Void;
  }
}
