cmake --build _build --config Release

py2 gather_benchmarks.py INSERT_0_.*

python2 /mnt/c/Dev/GitHub/CompareIntegerMaps/scripts/render_graphs.py

For pip install
sudo apt-get install libffi-dev
pip install cairocffi
Use "import cairocffi as cairo"