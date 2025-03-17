import os
import tiktoken
import argparse
import json
from typing import Dict, Any

class TokenEfficiencyValidator:
    def __init__(self, model: str = 'cl100k_base'):
        self.encoding = tiktoken.get_encoding(model)
        self.max_efficiency_threshold = 500  # Maximale Tokens für effiziente Prompts

    def count_tokens(self, text: str) -> int:
        """Zählt die Tokens in einem Text."""
        return len(self.encoding.encode(text))

    def validate_prompt(self, prompt: str) -> Dict[str, Any]:
        """Analysiert die Token-Effizienz eines Prompts."""
        token_count = self.count_tokens(prompt)
        
        return {
            'token_count': token_count,
            'is_efficient': token_count <= self.max_efficiency_threshold,
            'efficiency_percentage': min(100, (self.max_efficiency_threshold / token_count) * 100)
        }

    def validate_directory(self, directory: str) -> Dict[str, Any]:
        """Validiert alle Markdown-Dateien in einem Verzeichnis."""
        results = {}
        
        for root, _, files in os.walk(directory):
            for file in files:
                if file.endswith('.md'):
                    filepath = os.path.join(root, file)
                    with open(filepath, 'r', encoding='utf-8') as f:
                        content = f.read()
                        validation = self.validate_prompt(content)
                        results[file] = validation
        
        return results

def main():
    parser = argparse.ArgumentParser(description='Systemprompt Token-Effizienz Validator')
    parser.add_argument('directory', type=str, help='Verzeichnis zur Validierung')
    parser.add_argument('--output', type=str, default='token_efficiency_report.json', 
                        help='Ausgabedatei für Validierungsbericht')
    
    args = parser.parse_args()
    
    validator = TokenEfficiencyValidator()
    results = validator.validate_directory(args.directory)
    
    # Generiere Validierungsbericht
    with open(args.output, 'w', encoding='utf-8') as f:
        json.dump(results, f, indent=2)
    
    # Konsolen-Ausgabe
    for filename, result in results.items():
        print(f"{filename}:")
        print(f"  Token Count: {result['token_count']}")
        print(f"  Efficient: {result['is_efficient']}")
        print(f"  Efficiency: {result['efficiency_percentage']:.2f}%")

if __name__ == '__main__':
    main()