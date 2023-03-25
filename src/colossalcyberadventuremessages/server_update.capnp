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
  x @1 :Float32;
  y @2 :Float32;
  angle @3 :Float16;
  UID @3 :Uint16;
}

struct VanishBullet {
  UID @0 :Uint16;
}

struct HealthUpdate {
  HP @0 :Uint8;
}

struct ServerUpdate {
  union {
    chatMessage @0 :ChatMessage;
    entitiesUpdate @1 :List(EntityUpdate);
    bulletsUpdate @2 :List(BulletsUpdate);
    vanishBullet @3 :List(VanishBullet);
    healthPoints @4 :HealthUpdate;
  }
}
