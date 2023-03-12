@0x978147d748ecac24;

struct ServerChatMessage {
  username @0 :Text;
  contents @1 :Text;
}

struct ServerMovement {
    x @0: Float32;
    y @1: Float32;
}

struct ServerUpdate {
  union {
    chatMessage @0 :ServerChatMessage;
    delme @1 :Void;
    movement @2 :ServerMovement;
  }
}
