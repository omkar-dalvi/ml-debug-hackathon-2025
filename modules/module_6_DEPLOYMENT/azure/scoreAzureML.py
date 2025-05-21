import json
import mlflow
import mlflow.sklearn
import numpy as np

# Load the model
model = None

def init():
    global model
    # Load the MLflow model
    model = mlflow.sklearn.load_model("models:/log_reg_model/latest")  # Replace with your actual model URI

def run(raw_data):
    # Parse input JSON into numpy array or DataFrame
    data = json.loads(raw_data)
    input_array = np.array(data['data'])

    # Perform prediction
    predictions = model.predict(input_array)

    # Return predictions as a JSON response
    return json.dumps(predictions.tolist())
