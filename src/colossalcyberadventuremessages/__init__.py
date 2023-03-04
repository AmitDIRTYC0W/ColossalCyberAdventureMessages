"""
Cap'n Proto schemas of the messages transferred between ColossalCyberAdventure's clients and
servers.
"""

import capnp
from pathlib import PurePath

def load(filename: str):
    return capnp.load(str(PurePath(__file__).parent.joinpath(filename)))

identification = load('identification.capnp')
client_update = load('client_update.capnp')
server_update = load('server_update.capnp')

del load
del PurePath
del capnp

__version__ = "0.2.0"
