@0xd291577ed19870fa;

struct ClientChatMessage {
  contents @0 :Text;
}

struct ClientUpdate {
  union {
    chatMessage @0 :ClientChatMessage;
  }
}

struct ServerChatMessage {
  username @0 :Text;
  contents @1 :Text;
}

struct ServerUpdate {
  union {
    chatMessage @0 :ServerChatMessage;
  }
}
