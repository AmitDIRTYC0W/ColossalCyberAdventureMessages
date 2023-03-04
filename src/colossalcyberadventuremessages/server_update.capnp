@0x978147d748ecac24

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
