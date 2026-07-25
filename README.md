# Flight Delay Prediction (KNN)

Predicting flight delays using a k-Nearest Neighbors classifier.

## Project Structure

```
flight-delay-knn/
├── venv/                       # virtual environment (not committed)
├── data/
│   ├── flights.csv             # raw data — do not edit directly
│   └── data_dictionary.csv     # column meanings / reference
├── notebooks/
│   └── flight_delay_knn.ipynb  # main working notebook
├── outputs/
│   ├── figures/                # saved plots (delay distribution, confusion matrix, etc.)
│   └── models/                 # exported trained models
├── .gitignore
└── README.md
```

## Setup

```bash
source venv/bin/activate
pip install -r requirements.txt   # if present
jupyter notebook notebooks/flight_delay_knn.ipynb
```

## Notes

- `data/flights.csv` is the raw source — never edit it directly.
- Save generated plots to `outputs/figures/` and trained models to `outputs/models/`.
