# ml-debug-hackathon-2025

## Environment Details

Azure ML Studio

* Region: East US
* Networking: Public
* Pricing Tier: Premium
* Idle Shutdown: 30 mins
* VM Type: CPU
* VM Size: Standard_A2m_v2 (2 cores, 16 GB RAM, 20 GB disk)
    * Use this for both Compute Instance and Compute Cluster
* Allowed Location = "East US"
* ADLS and Blob (Will use GeoZone Redundancy) = ["Standard_LRS", "Standard_RAGRS", "Standard_GRS"]
* CosmosDB = Free Tier
* Azure SQL DB = ["Basic"]
* StreamAnalytics = ["Standard", "StandardV2"]
* Azure Databricks = ["Standard", "trial", "Standard_DS3_v2", "Premium"]
* ADF
* Azure Synapse Pool = ["DW100c"]
* Key Vaults = ["Standard"]
* Azure services will be integrated with GIT
* Virtual Networks
* Event Hubs = ["Basic"]
* IOT Hub = ["F1"] || ["ST0"]
* Azure ML = ["Basic"] || ["Standard_D3_v2"]
* Azure container registry = ["Basic"]
* Azure Application Insights


Azure Databricks

* Region: East US
* Networking: Public
* Pricing Tier: Premium
* Compute Type: All-purpose (Single Node)
* Runtime Version: 16.3 ML (includes Apache Spark 3.5.2, Scala 2.12)
* Node Type: Standard_D4ds_v5 (4 cores, 16 GB RAM)
* Terminal Shutdown: 30 mins


