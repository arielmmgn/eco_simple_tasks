import 'package:get/get.dart';

class EcoTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'pt_BR': {
      'today': 'Hoje',
      'tasks': 'Tarefas',
      'tasks_count': '%s tarefas',
      'add_new': 'Adicionar',
      'my_tasks': 'Minhas Tarefas',
      'no_tasks': 'Nenhuma tarefa por aqui...',
    },
    'en_US': {
      'today': 'Today',
      'tasks': 'Tasks',
      'tasks_count': '%s tasks',
      'add_new': 'Add New',
      'my_tasks': 'My Tasks',
      'no_tasks': 'No tasks around here...',
    },
  };
}