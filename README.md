```bash
/Users/rxlabz/dev/tools/chromedriver --port=4444 &

flutter drive --no-headless --release\
  --driver=test_driver/integration_test.dart \
  --target=integration_test/textinput_test.dart \
  --browser-name=chrome \
  --web-port=8001 \
  -d web-server
```