#  Remove MDM Profile from Mac
sudo rm /var/db/ConfigurationProfiles/Settings/.cloudConfigHasActivationRecord
sudo rm /var/db/ConfigurationProfiles/Settings/.cloudConfigRecordFound
sudo touch /var/db/ConfigurationProfiles/Settings/.cloudConfigProfileInstalled
sudo touch /var/db/ConfigurationProfiles/Settings/.cloudConfigRecordNotFound