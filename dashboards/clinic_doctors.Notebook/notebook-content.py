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

from pyspark.sql.types import StructType, StructField, StringType, IntegerType

doctor_schema = StructType([
    StructField("DoctorID", StringType(), True),
    StructField("FullName", StringType(), True),
    StructField("Specialty", StringType(), True),
    StructField("Email", StringType(), True),
    StructField("PhoneNumber", StringType(), True),
    StructField("YearsExperience", IntegerType(), True),
    StructField("Department", StringType(), True)
])

df_doctors = spark.read.option("header", "true").schema(doctor_schema).csv("Files/clinic_doctors.csv")
df_doctors.write.mode("overwrite").format("delta").saveAsTable("clinic_doctors")


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
