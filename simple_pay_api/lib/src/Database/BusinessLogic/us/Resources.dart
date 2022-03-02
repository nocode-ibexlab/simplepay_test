class ServerList {
  static const ALL = [_DEV, _DEV_KZ, _KR, _CPOS, _CRM, _KZ];

  static const CPOS = [_CPOS];

  static const CRM = [_CRM];

  static const KR = [_KR];

  static const KZ = [_KZ];

  static const DEV_KZ = [_DEV_KZ];

  static const _DEV = {
    'label': '개발서버 (DEV)',
    'asp': 'https://dev-asp.yoshop.net',
    'auth': 'https://dev-auth.yoshop.net',
    'grpc': 'https://dev-grpc.yoshop.net',
    'update': 'update.yoshop.net:22:update:beacon2016',
  };

  static const _DEV_KZ = {
    'label': 'Разработка (DEV-KZ)',
    'asp': 'https://dev-admin.yoshop.kz',
    'auth': 'https://dev-auth.yoshop.kz',
    'grpc': 'https://dev-grpc.yoshop.kz',
    'update': 'update.yoshop.kz:22:update:beacon2016',
  };

  static const _KR = {
    'label': '운영서버 (KR)',
    'asp': 'https://kr-admin.yoshop.net',
    'auth': 'https://kr-auth.yoshop.net',
    'grpc': 'https://kr-grpc.yoshop.net',
    'update': 'update.yoshop.net:22:update:beacon2016',
  };

  static const _CPOS = {
    'label': '운영서버 (CPOS)',
    'asp': 'https://cpos-admin.yoshop.net',
    'auth': 'https://cpos-auth.yoshop.net',
    'grpc': 'https://cpos-grpc.yoshop.net',
    'update': 'update.yoshop.net:22:update:beacon2016',
  };

  static const _CRM = {
    'label': 'Демо-версия KZ (CRM)',
    'asp': 'https://crm.yoshop.net',
    'auth': 'https://auth.yoshop.kz',
    'grpc': 'https://grpc.yoshop.kz',
    'update': 'crm-update.yoshop.net:22:update:beacon2016',
  };

  static const _KZ = {
    'label': 'Реальная-версия KZ (KZ)',
    'asp': 'https://admin.yoshop.kz',
    'auth': 'https://auth.yoshop.kz',
    'grpc': 'https://grpc.yoshop.kz',
    'update': 'update.yoshop.kz:22:update:beacon2016',
  };
}
