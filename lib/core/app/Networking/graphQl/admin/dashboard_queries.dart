class DashboardQueries {
  factory DashboardQueries() => _instance;

  DashboardQueries._();

  static final DashboardQueries _instance = DashboardQueries._();

  Map<String, dynamic> totalProductsQueries() {
    return {
      'query': '''
      {
        products{
        title
      }
      }
      ''',
    };
  }

  Map<String, dynamic> totalCategoriesQueries() {
    return {
      'query': '''
      {
        categories
        {
        name
        }
      }
      ''',
    };
  }
  Map<String, dynamic> totalUsersQueries() {
    return {
      'query': '''
      {
        users
        {
        name
        }
      }
      ''',
    };
  }
}
