import 'dart:io';
import 'dart:convert';

void main() async {
  var request = await HttpClient().getUrl(Uri.parse(
      'https://adventofcode.com/2018/day/2/input')); // produces a request object

  request.headers.set(HttpHeaders.cookieHeader,
      "session=53616c7465645f5f81a516a45603f986493b74a7529d3faa97c4b725aa8c4d9d4ab73fd75befb1cfb2263204b7c3bf18");

  // sends the request
  var response = await request.close();
  var content = response.transform(Utf8Decoder());
  await for (var contents in content) {
    process(contents);
  }
}

void process(String contents) {
  print(contents.split("\n"));
}
