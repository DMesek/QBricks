import 'package:mason/mason.dart';

// Used for the model
final dataTypes = [
  'String',
  'num',
  'int',
  'double',
  'bool',
  'List',
  'Map',
  'dynamic',
  'Set',
  'DateTime',
];

void run(HookContext context) async {
  runRepositoryHookForDependenciesAndMethods(context);
  runModelHook(context);
}

void runModelHook(HookContext context) {
  final logger = context.logger;

  if (!logger.confirm(
    '? Do you want to add properties to your model?',
    defaultValue: true,
  )) {
    context.vars = {
      ...context.vars,
      'hasProperties': false,
    };
    return;
  }

  logger.alert(lightYellow.wrap('enter "e" to exit adding properties'));
  logger.alert('Format: dataType propertyName e.g, String myProperty:');
  final properties = <Map<String, dynamic>>[];

  while (true) {
    final property = logger.prompt(':').replaceAll(RegExp('\\s+'), ' ').trim();
    if (property.toLowerCase() == 'e') {
      break;
    }

    if (!property.contains(' ')) {
      logger.alert(
          'That was not a valid format -> dataType propertyName e.g, String myProperty');
      continue;
    }

    if ((property.contains('<') && !property.contains('>')) ||
        (property.contains('>') && !property.contains('<'))) {
      logger.alert(
          'It seems you are missing a < or >, please retype this property');
      continue;
    }

    final splitProperty = property.split(' ');
    final propertyType = splitProperty[0];
    final propertyName = splitProperty[1];
    final hasSpecial = propertyType.toLowerCase().contains('<') ||
        propertyType.toLowerCase().contains('>');
    final listProperties = _getCustomListProperties(hasSpecial, propertyType);
    final isCustomDataType = !dataTypes.contains(propertyType) && !hasSpecial;
    properties.add({
      'name': propertyName,
      'type': propertyType,
      'hasSpecial': hasSpecial,
      'isCustomDataType': isCustomDataType,
      ...listProperties,
    });
  }
  context.vars = {
    ...context.vars,
    'properties': properties,
    'hasProperties': properties.isNotEmpty,
  };
}

void runRepositoryHookForDependenciesAndMethods(HookContext context) {
  final logger = context.logger;

  if (logger.confirm(
    '? Do you want to add dependencies to your repository?',
    defaultValue: true,
  )) {
    logger.alert(lightYellow.wrap('enter "e" to exit adding dependencies'));
    logger.alert('Format: dependencyName');
    final dependencies = <Map<String, dynamic>>[];
    while (true) {
      final dependency =
          logger.prompt(':').replaceAll(RegExp('\\s+'), ' ').trim();
      if (dependency.toLowerCase() == 'e') {
        break;
      }
      if (dependency.contains(' ')) {
        logger.alert(
            'That was not a valid format, no spaces just the name -> dependencyName');
        continue;
      }
      if (dependency == '' || dependency == '\n' || dependency.length == 1) {
        continue;
      }
      dependencies.add({'dependencyName': dependency});
    }
    context.vars = {
      ...context.vars,
      'dependencies': dependencies,
    };
  }
  if (!logger.confirm(
    '? Do you want to add methods to your repository?',
    defaultValue: true,
  )) {
    return;
  }
  logger.alert(lightYellow.wrap('enter "e" to exit adding methods'));
  logger.alert('Format: returnType methodName e.g, String myMethod:');
  final methods = <Map<String, dynamic>>[];
  while (true) {
    final method = logger.prompt(':').replaceAll(RegExp('\\s+'), ' ').trim();
    if (method.toLowerCase() == 'e') {
      break;
    }
    if (!method.contains(' ')) {
      logger.alert(
          'That was not a valid format -> returnType methodName e.g, String myMethod');
      continue;
    }
    final splitProperty = method.split(' ');
    final propertyType = splitProperty[0];
    final propertyName = splitProperty[1];
    methods.add({
      'methodName': propertyName,
      'type': propertyType,
    });
  }
  context.vars = {
    ...context.vars,
    'methods': methods,
  };
}

Map<String, dynamic> _getCustomListProperties(
  bool hasSpecial,
  String propertyType,
) {
  if (!hasSpecial || !propertyType.contains('List')) {
    return {
      'isCustomList': false,
    };
  }
  final startIndex = propertyType.indexOf('<');
  final endIndex = propertyType.indexOf('>');
  final listType = propertyType.substring(startIndex + 1, endIndex).trim();
  if (dataTypes.contains(listType)) {
    return {
      'isCustomList': false,
    };
  }
  return {
    'isCustomList': true,
    'customListType': listType,
  };
}
