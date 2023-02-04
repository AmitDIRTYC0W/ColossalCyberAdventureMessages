from glob import glob
import subprocess

def build():
	schemas: list[str] = glob('*_msg.fbs')
	_ = subprocess.run(['flatc', '--python', '-o', 'colossalcyberadventuremessages', 'log_in_response.fbs'])

if __name__ == '__main__':
	build()