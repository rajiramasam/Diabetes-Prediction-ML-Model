# Diabetes Prediction Web Application

A Streamlit-based web application for predicting the probability of diabetes based on various health parameters.

## Features

- User-friendly web interface
- Real-time diabetes probability prediction
- Input validation for all parameters
- Clear visualization of prediction results

## Prerequisites

- Python 3.7 or higher
- pip (Python package installer)

## Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd diabetes_prediction
```

2. Create and activate a virtual environment:
```bash
# Windows
python -m venv venv
venv\Scripts\activate

# macOS/Linux
python3 -m venv venv
source venv/bin/activate
```

3. Install required packages:
```bash
pip install -r requirements.txt
```

## Running the Application

1. Start the Streamlit application:
```bash
streamlit run new.py
```

2. Open your web browser and navigate to:
```
http://localhost:8501
```

## Usage

1. Fill in the following parameters:
   - Gender (Male/Female)
   - Age
   - Hypertension status (0 or 1)
   - Heart Disease status (0 or 1)
   - Smoking History (Yes/No)
   - BMI (Body Mass Index)
   - HbA1c level
   - Blood Glucose level

2. Click the "Predict" button to get the probability of diabetes

3. The application will display:
   - The probability of having diabetes
   - A diagnosis (Diabetes found/not found)

## Input Guidelines

- Age: Enter your age in years
- Hypertension: Enter 1 if you have hypertension, 0 if not
- Heart Disease: Enter 1 if you have heart disease, 0 if not
- BMI: Enter your Body Mass Index (weight in kg / (height in m)^2)
- HbA1c level: Enter your HbA1c level (typically between 4-15)
- Blood Glucose level: Enter your blood glucose level (typically between 70-300 mg/dL)

## Model Information

The application uses a pre-trained machine learning model stored in `Sample.pkl`. The model predicts the probability of diabetes based on the input parameters, with a threshold of 0.5 for the final diagnosis.

## Docker Support

The application can also be run using Docker:

1. Build the Docker image:
```bash
docker build -t diabetes-prediction .
```

2. Run the container:
```bash
docker run -p 8501:8501 diabetes-prediction
```

