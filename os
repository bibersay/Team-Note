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
os.path.join(os.getcwd(),file_name) # 경로 합치기

##########################################################
# 최상위 디렉토리로 올라가기
while os.path.basename(cur_dir):    
  cur_dir = os.path.dirname(cur_dir)
  print(cur_dir) 
  
##########################################################
# os.walk 사용

root_dir = "./test/"
for (root, dirs, files) in os.walk(root_dir):
    print("# root : " + root)
    if len(dirs) > 0:
        for dir_name in dirs:
            print("dir: " + dir_name)

    if len(files) > 0:
        for file_name in files:
            print("file: " + file_name)
            
##########################################################
# 경로 합치기 사용











