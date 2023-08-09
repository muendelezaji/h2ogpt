# https://pypi.org/project/pynsist/
# https://stackoverflow.com/questions/69352179/package-streamlit-app-and-run-executable-on-windows/69621578#69621578
# see also https://stackoverflow.com/questions/17428199/python-windows-installer-with-all-dependencies
# see also https://cyrille.rossant.net/create-a-standalone-windows-installer-for-your-python-application/
# see also https://pyinstaller.org/en/stable/operating-mode.html

# install NSIS:
# http://nsis.sourceforge.net/Download

# pip install pynsist


# make wheels for some things not on pypi
pip wheel antlr4-python3-runtime==4.9.3
pip wheel ffmpy==0.3.1
pip wheel fire==0.5.0
pip wheel future==0.18.3
pip wheel hnswlib==0.7.0
pip wheel intervaltree==3.1.0
pip wheel iopath==0.1.10
pip wheel olefile==0.46
pip wheel pycocotools==2.0.6
pip wheel python-docx==0.8.11
pip wheel python-pptx==0.6.21
pip wheel rouge-score==0.1.2
pip wheel sentence-transformers==2.2.2
pip wheel sgmllib3k==1.0.0
pip wheel torch==2.0.1+cu117 --extra-index-url https://download.pytorch.org/whl/cu117
pip wheel validators==0.20.0

mkdir wheels
move *.whl wheels

# build
python -m nsist src/windows_installer.cfg

# test
python run_app.py