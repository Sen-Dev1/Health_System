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


from pyspark.sql.functions import col, to_date

df_patients = (
    spark.read.option("header", "true").csv("Files/clinic_patients.csv")
    .withColumn("DateOfBirth", to_date(col("DateOfBirth")))
    .withColumn("RegisteredDate", to_date(col("RegisteredDate")))
)

df_patients.write.mode("overwrite").format("delta").saveAsTable("clinic_patients")


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
