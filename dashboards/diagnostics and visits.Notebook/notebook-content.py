# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "8932c9b9-27d6-4e66-89c3-ac97e1b7a6fa",
# META       "default_lakehouse_name": "HealthcareLakehouse",
# META       "default_lakehouse_workspace_id": "c87bf39d-bb68-44c5-a340-f922df29bfe4",
# META       "known_lakehouses": [
# META         {
# META           "id": "8932c9b9-27d6-4e66-89c3-ac97e1b7a6fa"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!

from pyspark.sql.functions import col, to_timestamp

df_visits = (
    spark.read.option("header", "true").csv("Files/clinic_visits.csv")
    .withColumn("VisitDate", to_timestamp(col("VisitDate")))
    .withColumn("DurationMinutes", col("DurationMinutes").cast("int"))
    .withColumn("BillingAmount", col("BillingAmount").cast("double"))
)

df_visits.write.mode("overwrite").format("delta").saveAsTable("clinic_visits")


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

from pyspark.sql.functions import col, to_timestamp  # ✅ Import this

df_diagnostics = (
    spark.read.option("header", "true").csv("Files/clinic_diagnostics.csv")
    .withColumn("TestDate", to_timestamp(col("TestDate")))
    .withColumn("TurnaroundHours", col("TurnaroundHours").cast("int"))
)

df_diagnostics.write.mode("overwrite").format("delta").saveAsTable("clinic_diagnostics")


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
