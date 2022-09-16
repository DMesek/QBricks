if [ -z "$1" ]; then 
    echo "No project name provided."; exit 1
fi
if [ -z "$2" ]; then 
    echo "No feature name provided."; exit 1
fi
project_name="$1"
feature_name="$2"

[ ! -f mason.yaml ] && echo "No mason.yaml. Please run mason init" && exit 1
[ ! -f mason-lock.json ] && echo "No mason-lock.json. Please run mason get" && exit 1

echo "What is the entity name? "
read entity

echo "Setup your entity:"
mason make entity --feature_name $feature_name --project_name $project_name --entity $entity
echo "Setup your respone/request model:"
mason make model --feature_name $feature_name --project_name $project_name
echo "Setup your repository:"
mason make repository --feature_name $feature_name --project_name $project_name
echo "Setup your notifier:"
mason make repository --feature_name $feature_name --project_name $project_name
