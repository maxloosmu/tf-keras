# Complete Tensorflow 2 and Keras Deep Learning Bootcamp

### Troubleshooting for starting Jupyter at the root of either WSL2 or Windows
- I troubleshoot the setting up of git for powershell, so that I can access git files from GitHub using a Conda Jupyter interface that's started from the Windows root.  
- GitHub access is faster when started from the root directory, so if Jupyter starts from the Windows root, then GitHub must be installed in the Windows root to have fast access from there.
- WSL2 starts from the WSL root, and access is fast only if Jupyter is started from the WSL2 root.  GitHub for WSL2 is installed in the WSL2 root, so access is fast, and I've used `nb.bash` to start Jupyter from the WSL2 root, but there were some unexpected delays due to the screen freezing for about 60 seconds twice in a row.
- This 120 seconds screen freezing problem has been removed.  It has been reduced to just closing the calibre-ebook windows, which pops up when `jupyter notebook` is started from WSL2.  There appears to be some conflict between the Jupyter Notebook app and the Calibre Ebook app.
- I tried mounting a WSL2 network drive in a Windows root folder, but failed because WSL2 folders cannot be detected using this method.  
- Troubleshooting with help from ChatGPT4:
    - https://chat.openai.com/c/a0abffbb-2ef6-4631-a590-eba60835cc01
- Troubleshooting help from Microsoft:
    - https://github.com/microsoft/WSL/issues/10869
