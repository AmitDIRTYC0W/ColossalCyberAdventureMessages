@0xd291577ed19870fa;

struct ClientChatMessage {
  contents @0 :Text;
}

struct ClientMovement {
  x @0 :Float32;
  y @1 :Float32;
}

struct ClientUpdate {
  union {
    chatMessage @0 :ClientChatMessage;
    movement @1 :ClientMovement;
  }
}
