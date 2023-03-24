@0x978147d748ecac24;

struct ChatMessage {
  username @0 :Text;
  contents @1 :Text;
}

struct EntityUpdate {
  id @0 :UInt16;
  x @1 :Float32;
  y @2 :Float32;
}

struct BulletsUpdate {
  id @0 :UInt16;
  x @1 :Float32;
  y @2 :Float32;
}

struct ServerUpdate {
  union {
    chatMessage @0 :ChatMessage;
    entitiesUpdate @1 :List(EntityUpdate);
    bulletsUpdate @2 :List(BulletsUpdate);
  }
}
