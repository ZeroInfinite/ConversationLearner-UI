﻿{"trainDialogs":[],"actions":[{"actionId":"e8862186-215c-4cdd-b363-07307be9bc46","createdDateTime":"2018-10-17T20:50:35.4517318+00:00","actionType":"TEXT","payload":"{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"What's your name?\",\"marks\":[]}]}]}]}}}","isTerminal":true,"requiredEntitiesFromPayload":[],"requiredEntities":[],"negativeEntities":["b67e3242-8e79-4ba4-98fb-510afcee22fd"],"suggestedEntity":"b67e3242-8e79-4ba4-98fb-510afcee22fd"},{"actionId":"624af3d8-9cfa-4925-81e8-993c6254848b","createdDateTime":"2018-10-17T20:50:46.4715483+00:00","actionType":"TEXT","payload":"{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Hey \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"b67e3242-8e79-4ba4-98fb-510afcee22fd\",\"name\":\"name\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$name\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"\",\"marks\":[]}]}]}]}}}","isTerminal":true,"requiredEntitiesFromPayload":["b67e3242-8e79-4ba4-98fb-510afcee22fd"],"requiredEntities":["b67e3242-8e79-4ba4-98fb-510afcee22fd"],"negativeEntities":["930cb186-5dec-49f3-9143-7005aa5965f5","b67766d7-927f-45ea-89e1-f37eedfd9b8b"]},{"actionId":"b50917cf-65f2-435e-8be5-2363f9b970d6","createdDateTime":"2018-10-17T20:50:58.2535668+00:00","actionType":"TEXT","payload":"{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Hey \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"b67e3242-8e79-4ba4-98fb-510afcee22fd\",\"name\":\"name\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$name\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\", what do you really want?\",\"marks\":[]}]}]}]}}}","isTerminal":true,"requiredEntitiesFromPayload":["b67e3242-8e79-4ba4-98fb-510afcee22fd"],"requiredEntities":["b67e3242-8e79-4ba4-98fb-510afcee22fd"],"negativeEntities":["930cb186-5dec-49f3-9143-7005aa5965f5","b67766d7-927f-45ea-89e1-f37eedfd9b8b"]},{"actionId":"2ffbf391-cee9-4205-9ede-7887274a8dc3","createdDateTime":"2018-10-17T20:51:07.8998649+00:00","actionType":"TEXT","payload":"{\"json\":{\"kind\":\"value\",\"document\":{\"kind\":\"document\",\"data\":{},\"nodes\":[{\"kind\":\"block\",\"type\":\"line\",\"isVoid\":false,\"data\":{},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"Sorry \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"b67e3242-8e79-4ba4-98fb-510afcee22fd\",\"name\":\"name\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$name\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\" I can't help you get \",\"marks\":[]}]},{\"kind\":\"inline\",\"type\":\"mention-inline-node\",\"isVoid\":false,\"data\":{\"completed\":true,\"option\":{\"id\":\"b67766d7-927f-45ea-89e1-f37eedfd9b8b\",\"name\":\"want\"}},\"nodes\":[{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"$want\",\"marks\":[]}]}]},{\"kind\":\"text\",\"leaves\":[{\"kind\":\"leaf\",\"text\":\"\",\"marks\":[]}]}]}]}}}","isTerminal":true,"requiredEntitiesFromPayload":["b67e3242-8e79-4ba4-98fb-510afcee22fd","b67766d7-927f-45ea-89e1-f37eedfd9b8b"],"requiredEntities":["b67e3242-8e79-4ba4-98fb-510afcee22fd","b67766d7-927f-45ea-89e1-f37eedfd9b8b"],"negativeEntities":[]}],"entities":[{"entityId":"b67e3242-8e79-4ba4-98fb-510afcee22fd","createdDateTime":"2018-10-17T20:50:13.0282408+00:00","entityName":"name","entityType":"LUIS","isMultivalue":false,"isNegatible":false},{"entityId":"b67766d7-927f-45ea-89e1-f37eedfd9b8b","createdDateTime":"2018-10-17T20:50:17.9862941+00:00","entityName":"want","entityType":"LUIS","isMultivalue":false,"isNegatible":false},{"entityId":"930cb186-5dec-49f3-9143-7005aa5965f5","createdDateTime":"2018-10-17T20:50:23.9491309+00:00","entityName":"sweets","entityType":"LUIS","isMultivalue":false,"isNegatible":false}],"packageId":"043dbef1-24c2-4b1a-922a-979f0f7dc65a"}