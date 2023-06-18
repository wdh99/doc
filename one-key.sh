# 在 /d/Work/Translation/fastapi/中翻译，然后将编译的网页复制到/f/笔记博客/文档汉化/doc/fastapi/


cd /d/Work/Translation/fastapi/

# 进入虚拟环境，编译文档
. ../venv/Scripts/activate
python scripts/docs.py build-lang zh
deactivate

# 在‘文档汉化’中清空要翻译的内容
cd /f/笔记博客/文档汉化/doc/fastapi
rm -rf ./*

# 复制编译后的文档
cp -r /d/Work/Translation/fastapi/docs_build/zh/site/* /f/笔记博客/文档汉化/doc/fastapi/

cd /f/笔记博客/文档汉化/doc
git add .
git commit -m 'update'
git push

