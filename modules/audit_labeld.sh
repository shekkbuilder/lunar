# audit_labeld
#
# Turn off labeld
#.

audit_labeld () {
  if [ "$os_name" = "SunOS" ]; then
    if [ "$os_version" = "10" ] || [ "$os_version" = "11" ]; then
      funct_verbose_message "Label Daemon"
      service_name="svc:/system/labeld:default"
      funct_service $service_name disabled
    fi
  fi
}
