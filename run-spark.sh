./spark-3.2.0-bin-hadoop3.2/bin/spark-submit \
--master k8s://https://127.0.0.1:51081 \
--deploy-mode cluster \
--name spark-pi \
--class org.apache.spark.examples.SparkPi \
--conf spark.executor.instances=1 \
--conf spark.kubernetes.driver.pod.name=spark-pi-driver \
--conf spark.kubernetes.container.image=hello-spark/spark:v1 \
--conf spark.kubernetes.container.image.pullPolicy=Never \
--conf spark.kubernetes.authenticate.driver.serviceAccountName=spark \
local:///opt/spark/examples/jars/spark-examples_2.12-3.2.0.jar 10000
