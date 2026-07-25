PYTHON = venv/bin/python
JUPYTER = venv/bin/jupyter
NOTEBOOK = notebooks/flight_delay_knn.ipynb

install:
	$(PYTHON) -m pip install -r requirements.txt

notebook:
	$(JUPYTER) notebook $(NOTEBOOK)

clean:
	rm -rf **/.ipynb_checkpoints __pycache__
