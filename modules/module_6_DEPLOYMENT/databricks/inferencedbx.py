import mlflow
import mlflow.sklearn
import pandas as pd
import sys

# Retrieve the registered model from Databricks' MLflow Model Registry
model_uri = "models:/log_reg_model/1"  # Use the correct version of your model
model = mlflow.sklearn.load_model(model_uri)

# Load the input data for inference (assuming CSV input data)
input_file_path = sys.argv[sys.argv.index("--input") + 1]  # Get the input file path from parameters
input_data = pd.read_csv(input_file_path)

# Perform prediction
predictions = model.predict(input_data)

# Save predictions to a CSV file
output_file_path = "/dbfs/FileStore/outputs/predictions.csv"
pd.DataFrame(predictions, columns=["Predictions"]).to_csv(output_file_path, index=False)

print(f"Predictions saved to {output_file_path}")
