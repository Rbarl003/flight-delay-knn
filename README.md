# Flight Delay Prediction (KNN)

Predicting whether a flight will be delayed using a k-Nearest Neighbors classifier
(with a Random Forest comparison), trained on historical flight data.

## What's Inside

```
flight-delay-knn/
├── data/
│   └── flights.csv.xz          # dataset, compressed (~80 MB). Decompress before use.
├── notebooks/
│   └── flight_delay_knn.ipynb  # main notebook — all the analysis and modeling
├── outputs/
│   ├── figures/                # plots saved here (delay distribution, confusion matrix)
│   └── models/                 # trained models saved here
├── requirements.txt            # Python libraries needed
└── README.md
```

## How to Run

You need **Python 3.10+**. Follow these steps from the project folder.

### 1. Create and activate a virtual environment

```bash
python3 -m venv venv
source venv/bin/activate          # Windows: venv\Scripts\activate
```

### 2. Install the required libraries

```bash
pip install -r requirements.txt
```

This installs everything the notebook uses:

| Library            | Used for                                  |
|--------------------|-------------------------------------------|
| pandas             | loading and preparing the data            |
| scikit-learn       | KNN & Random Forest models, metrics       |
| imbalanced-learn   | SMOTE (balancing delayed vs. on-time)     |
| matplotlib         | plots and charts                          |
| jupyter            | running the notebook                      |

### 3. Unpack the dataset

The data is stored compressed to keep the repo small. Decompress it once:

```bash
xz -dk data/flights.csv.xz        # creates data/flights.csv, keeps the .xz
```

> No `xz` command? Install it with `brew install xz` (Mac) or `sudo apt install xz-utils` (Linux).

### 4. Open the notebook

```bash
jupyter notebook notebooks/flight_delay_knn.ipynb
```

Then run the cells top to bottom (**Kernel → Restart & Run All**).

## Notes

- Don't edit `data/flights.csv` by hand — it's the raw source.
- Generated plots go to `outputs/figures/` and trained models to `outputs/models/`.
