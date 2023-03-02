HTTP_RESPONSE_CODE=$(curl -s -o /dev/null -I -w "%{http_code}\n" localhost)
if [[ $HTTP_RESPONSE_CODE = 200 ]]; then
    exit 0
else
    # Exit Error Code
    echo "Error: Localhost did not return HTTP 200"  1>&2
    exit 1
fi