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

struct Weapon {
  weaponUID @0 :UInt16;
}

struct Skill {
  skill @0 :Void;
}

struct ClientUpdate {
  union {
    chatMessage @0 :ClientChatMessage;
    movement @1 :ClientMovement;
    shot @2 :ClientShot;
    disconnect @3 :Void;
    currentWeapon @4 :Weapon;
    skillActivated @5 :Skill;
  }
}
