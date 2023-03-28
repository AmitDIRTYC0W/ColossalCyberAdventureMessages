@0xc08688c2018dbb99;

struct ChatMessage {
  contents @0 :Text;
}

struct Move {
  x @0 :Float32;
  y @1 :Float32;
}

struct Shot {
  angle @0 :Float32;
}

enum Weapon {
  gun @0;
  sniper @1;
  shotgun @2;
}

struct ClientUpdate {
  union {
    chatMessage @0 :ChatMessage;
    move @1 :Move;
    shot @2 :Shot;
    changeWeapon @3 :Weapon;
    useSkill @4 :UInt8;
  }
}
