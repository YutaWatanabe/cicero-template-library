Feature: HelloWorld
  This describe the expected behavior for the Accord Project's "Hello World!" contract for 森下 将宏

  Background:
    Given that the contract says
"""
"森下 将宏" さん、こんにちは。
Accord Project へようこそ！
"""

  Scenario: The contract should say Hello to 森下 将宏, from the Accord Project, for the default request
    When it receives the default request
    Then it should respond with
"""
{
    "$class": "org.accordproject.helloworld.MyResponse",
    "output": "こんにちは、Accord Project 森下 将宏さん"
}
"""

  Scenario: The contract should say Hello to 森下 将宏, from the 東京中央銀行
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
    "output": "こんにちは、東京中央銀行 森下 将宏さん"
}
"""

