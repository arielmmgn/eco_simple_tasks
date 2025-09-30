import 'package:get/get.dart';

class EcoTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'pt_BR': {
      'today': 'Hoje',
      'tasks': 'Tarefas',
      'tasks_count': '%s tarefas',
    },
    'en_US': {
      'today': 'Today',
      'tasks': 'Tasks',
      'tasks_count': '%s tasks',
    },
  };
}