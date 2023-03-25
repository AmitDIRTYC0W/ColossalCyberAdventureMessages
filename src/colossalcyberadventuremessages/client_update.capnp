@0xc08688c2018dbb99;

struct ClientChatMessage {
  contents @0 :Text;
}

struct ClientMovement {
  x @0 :Float32;
  y @1 :Float32;
}

struct ClientShot {
   angle @0 :Float16;
}

struct ClientUpdate {
  union {
    chatMessage @0 :ClientChatMessage;
    movement @1 :ClientMovement;
    shot @2 :ClientShot;
  }
}
