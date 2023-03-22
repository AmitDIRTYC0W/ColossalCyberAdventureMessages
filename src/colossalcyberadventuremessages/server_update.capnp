@0x978147d748ecac24;

struct ChatMessage {
  username @0 :Text;
  contents @1 :Text;
}

<<<<<<< HEAD
struct EntityUpdate {
  id @0 :UInt16;
  x @1 :Float32;
  y @2 :Float32;
}


struct ServerUpdate {
  union {
    chatMessage @0 :ChatMessage;
    entitiesUpdate @1 :List(EntityUpdate);
=======
struct ServerMovement {
    x @0: Float32;
    y @1: Float32;
}

struct EntitiesUpdate {
    todo: implement
}
struct ServerUpdate {
  union {
    chatMessage @0 :ServerChatMessage;
    delme @1 :Void;
    movement @2 :ServerMovement;
    entitiesUpdate @3 :EntitiesUpdate;
>>>>>>> origin/trunk
  }
}

