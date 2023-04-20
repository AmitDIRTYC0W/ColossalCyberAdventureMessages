@0x978147d748ecac24;

struct ChatMessage {
  username @0 :Text;
  contents @1 :Text;
}

struct EntityUpdate {
  enum EntityType {
    player @0;
    slime @1;
    skeleton @2;
    archer @3;
    playerBullet @4;
    archerBullet @5;
    coin @6;
  }

  enum AnimationState {
    idle @0;
    walk @1;
    attack @2;
    death @3;
  }

  enum Direction {
    left @0;
    right @1;
  }


  id @0 :UInt16;
  type @1 :EntityType;
  animationstate @2 :AnimationState;
  direction @3 :Direction;
  x @4 :Float32;
  y @5 :Float32;
}

struct BulletsUpdate {
  x @0 :Float32;
  y @1 :Float32;
  angle @2 :Float32;
  uid @3 :UInt16;
}

struct VanishBullet {
  uid @0 :UInt16;
}

struct HealthUpdate {
  hp @0 :UInt16;
}

struct ItemAdditionUpdate {
  enum Item{
    coin @0;
    mushroom @1;
  }

  item @0 :Item;
  change @1 :Int16;
}

struct ServerUpdate {
  union {
    chatMessage @0 :ChatMessage;
    entitiesUpdate @1 :List(EntityUpdate);
    bulletsUpdate @2 :List(BulletsUpdate);
    vanishBullet @3 :List(VanishBullet);
    healthPoints @4 :HealthUpdate;
    itemAdditionUpdate @5 :ItemAdditionUpdate;
  }
}
