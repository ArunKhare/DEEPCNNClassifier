# deep Classifier project
# Classification of Dog cat images

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
connect to dagshub from github.com
---------------------------------------------------------------
Testing Mlflow:
run research/mlexample.py
run mlflow ui
INFO:waitress:Serving on http://127.0.0.1:5000
--------------------------------------------
Mlflow server:
mlflow server \
--backend-store-uri sqlite:///mlflow.db \
--default-artifact-root ./artifacts \
--host 0.0.0.0 -p 1234
for windows system:
in browser localhost:1234
----------------------------------------------
dvc-git-github-dags-mlflow


STEP 1: Set remote URI in the python <script.py>
remote_server_uri = "https://dagshub.com/ArunKhare/DEEPCNNClassifier.mlflow"
mlflow.set_tracking_uri(remote_server_uri)

STEP 2: Set the env variable | Get it from dagshub -> Remote tab -> mlflow tab
export MLFLOW_TRACKING_URI=https://dagshub.com/ArunKhare/DEEPCNNClassifier.mlflow
export MLFLOW_TRACKING_USERNAME=ArunKhare
export MLFLOW_TRACKING_PASSWORD=<> \
python <script.py>

STEP 3: https://dagshub.com/ArunKhare/DEEPCNNClassifier -> Remote -> MLflow -> Go to mlflow ui
Use context manager of mlflow to start run and then log metrics, params and model
https://dagshub.com/ArunKhare/DEEPCNNClassifier
https://dagshub.com/ArunKhare/DEEPCNNClassifier.mlflow/#/experiments/0
https://dagshub.com/ArunKhare/DEEPCNNClassifier.mlflow/#/models

------------------------------------------------------------
Prediction Service:
start Docker Desktop in the system

docker build -t prediction_service .
docker run prediction_service
docker run -p 8501:8501 prediction_service # port map the container port(host) to windows port
streamlit run app.py
<!-- Push to docker hub -->
Tag the image:
docker tag pred_service1 arunkhare/pred_service1
docker tag firstimage YOUR_DOCKERHUB_NAME/firstimage

docker push arunkhare/pred_service1:tagname

----------------------------------------------------------------
local run: 
cd prediction_service
copy model.h5 to prediction_service
streamlit run app.py

fastapi (API + UI)
rm -rf
rm ~./condaarc
