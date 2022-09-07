if [ -z "$1" ]; then 
    echo "No feature name provided."; exit 1
fi
feature_name="$1"

[ ! -f mason.yaml ] && echo "No mason.yaml. Please run mason init" && exit 1
[ ! -f mason-lock.json ] && echo "No mason-lock.json. Please run mason get" && exit 1

echo "Setup your entity:"
mason make entity --feature_name $feature_name
echo "Setup your respone/request model:"
mason make model --feature_name $feature_name
echo "Setup your repository:"
mason make repository --feature_name $feature_name
