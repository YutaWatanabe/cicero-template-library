Feature: HelloWorld
  This describe the expected behavior for the Accord Project's "Hello World JP" contract

  Background:
    Given the default contract

  Scenario: The contract should say Hello to 渡辺 友太, from the Accord Project, for the default request
    When it receives the default request
    Then it should respond with
"""
{
    "$class": "org.accordproject.helloworld.MyResponse",
    "output": "こんにちは、Accord Project 渡辺 友太さん"
}
"""

  Scenario: The contract should say Hello to 渡辺 友太, from the 東京中央銀行
    When it receives the request
"""
{
    "$class": "org.accordproject.helloworld.MyRequest",
    "input": "東京中央銀行"
}
"""
    Then it should respond with
"""
{
    "$class": "org.accordproject.helloworld.MyResponse",
    "output": "こんにちは、東京中央銀行 渡辺 友太さん"
}
"""

