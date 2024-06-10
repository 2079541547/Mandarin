"""
本脚本旨在检查ANTLR语法规则文件中可能出现的重复定义问题，并提供重复规则的具体位置（文件名、行数）。

核心功能模块包括：
- 单个文件检查：针对用户指定的ANTLR语法文件，识别并报告重复的规则名称及其位置。
- 文件夹遍历检查：若用户指定了包含ANTLR语法文件的文件夹，则该模块会自动查找所有`.g4`扩展名的文件，
                 并汇总报告所有文件中发现的重复规则定义及其位置。

执行流程：
1. 程序启动后，用户需通过命令行界面选择操作模式：检查单一文件或遍历文件夹检查。
2. 根据用户选择，程序将引导输入相应的文件路径或文件夹路径。
3. 输出检查结果，展示存在重复规则的文件名、行数及具体重复的规则名称。

关键函数说明：
- `check_duplicates_in_file(filename)`：分析单个文件，记录规则名称及其出现位置，判断并返回包含位置信息的重复项。
- `check_folder_for_duplicates(folder_path)`：递归遍历指定文件夹，对每个`.g4`文件应用上述检查逻辑，汇总结果。

注意事项：
- 确保指定的路径准确无误，且文件编码为UTF-8，以便正确处理中文字符。
"""

import os
import re
from collections import defaultdict
import sys

def check_duplicates_in_file(filename):
    """
    分析ANTLR语法文件，找出其中的重复规则定义及其位置。
    """
    rule_pattern = re.compile(r'(\w+)\s*:')
    rule_positions = defaultdict(list)
    
    with open(filename, 'r', encoding='utf-8') as file:
        for linenumber, line in enumerate(file, start=1):
            match = rule_pattern.match(line)
            if match:
                rule_name = match.group(1)
                rule_positions[rule_name].append((filename, linenumber))
                
    duplicates = {rule: positions for rule, positions in rule_positions.items() if len(positions) > 1}
    return duplicates

def check_folder_for_duplicates(folder_path):
    """
    遍历目录下所有ANTLR语法文件，检查并汇总重复规则定义及其位置。
    """
    all_duplicates = defaultdict(list)
    for root, dirs, files in os.walk(folder_path):
        for file in files:
            if file.endswith('.g4'):
                filename = os.path.join(root, file)
                duplicates = check_duplicates_in_file(filename)
                for rule, positions in duplicates.items():
                    all_duplicates[rule].extend(positions)
    return dict(all_duplicates)

def format_output(duplicates):
    """
    格式化输出重复规则的信息，包括文件名、行数。
    """
    for rule, positions in duplicates.items():
        print(f"规则 '{rule}' 在以下位置重复:")
        for position in positions:
            print(f"\t文件: {position[0]}, 行号: {position[1]}")

def main():
    print("ANTLR 语法规则重复检查器")
    print("1. 检查单个文件")
    print("2. 检查文件夹内所有 .g4 文件")
    choice = input("请选择操作选项 (1/2): ")
    
    if choice == '1':
        filename = input("请输入ANTLR语法规则文件的路径: ")
        if not os.path.isfile(filename):
            print("文件未找到。")
            sys.exit(1)
        duplicates = check_duplicates_in_file(filename)
        if duplicates:
            format_output(duplicates)
        else:
            print(f"{filename} 无重复规则。")
    elif choice == '2':
        folder_path = input("请输入包含ANTLR语法规则文件的文件夹路径: ")
        if not os.path.isdir(folder_path):
            print("文件夹未找到。")
            sys.exit(1)
        duplicates = check_folder_for_duplicates(folder_path)
        if duplicates:
            format_output(duplicates)
        else:
            print("所有文件中均未发现重复规则。")
    else:
        print("无效选择，请输入1或2。")
        sys.exit(1)

if __name__ == "__main__":
    main()