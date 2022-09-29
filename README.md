# deep Classifier project
## workflow

1. Update config.yaml
2. Update secrets.yaml [optional]
3. Update params.yaml
4. update the entity
5. Update the configuration managerin src config
6. Update the components
7. Update the pipeline
8. Test run pipeline stage
9. run tox for testing your package
10. Update the dvc.yaml
11. run "dvc reproduce" for running all the stages in pipelie

pytest 

dvc init
dvc repro

mlflow server \
--backend-store-uri sqlite:///mlflow.db \
--default-artifact-root ./artifacts \
--host 0.0.0.0 -p 1234   

img
STEP 1: Set the env variable | Get it from dagshub -> remote tab -> mlflow tab
 by export <>
MLFLOW_TRACKING_URI=https://dagshub.com/ArunKhare/DEEPCNNClassifier.mlflow
MLFLOW_TRACKING_USERNAME=ArunKhare
MLFLOW_TRACKING_PASSWORD=<> \

STEP 2: install mlflow

STEP 3: Set remote URI

STEP 4: Use context manager of mlflow to start run and then log metrics, params and model
https://dagshub.com/ArunKhare/DEEPCNNClassifier
https://dagshub.com/ArunKhare/DEEPCNNClassifier.mlflow/#/experiments/0
https://dagshub.com/ArunKhare/DEEPCNNClassifier.mlflow/#/models

streamlit run app.py

docker build -t pred_service .
docker run pred_service
docker run -p 8501:8501 pred_service # port map the container port(host) to windows port

fastapi API_UI
rm -rf
rm ~./condaarc
