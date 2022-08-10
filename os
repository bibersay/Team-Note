import os
##########################################################
# 현재경로 전체 파일명 출력
os.listdir('.')

##########################################################
# 파일 이름 변경
os.rename('before.txt', 'after.txt')

##########################################################
# 권한 변경
os.chmod('file_name.txt', 0o777)

##########################################################
# 디렉토리 생성
os.mkdir('/foldername')
os.makedirs('/foldername1/foldername2/foldername3')

##########################################################
# 파일 삭제
os.remove('filename.txt')

##########################################################
# 디렉토리 삭제
os.rmdir('/foldername')

##########################################################
# 현재 경로 
cur_dir = os.getcwd()
os.path.split(cur_dir) # 경로 분리(상위, 최하위)
os.path.dirname(cur_dir) # 상위 디렉토리 얻기
os.path.basename(cur_dir) # 최하위 디렉토리 얻기

##########################################################
# 최상위 디렉토리로 올라가기
while os.path.basename(cur_dir):    
  cur_dir = os.path.dirname(cur_dir)
  print(cur_dir) 
