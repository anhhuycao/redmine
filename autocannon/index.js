'use strict';

const autocannon = require('autocannon');

const body = JSON.stringify({
  query:
    '{\n  getNewsById(_id: "64c72a1b7254553bc814e870") {\n    _id\n    coverPath\n    title\n    desc\n    view\n    authorId\n    tagIds\n    body\n  }\n}\n',
});

const instance = autocannon(
  {
    connections: 1000,
    duration: 1,
    url: 'https://apigateway.metaserv.vn/cms/graphql',
    method: 'POST',
    headers: { 'content-type': 'application/json' },
    body,
  },
  (err, result) => {
    if (err) {
      console.log(err);
      process.exit(-1);
    }
    console.log(result);
  },
);

process.once('SIGINT', () => {
  instance.stop();
});

autocannon.track(instance, { renderProgressBar: true });
