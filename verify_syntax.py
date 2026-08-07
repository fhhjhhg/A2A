import json
import ast

with open('instructor_large.ipynb', 'r', encoding='utf-8') as f:
    nb = json.load(f)

for i, cell in enumerate(nb['cells']):
    if cell['cell_type'] == 'code':
        source = "".join(cell['source'])
        if "clear_output" in source:
            print(f"Verifying Cell {i}")
            # we need to replace magics if there are any, but this notebook uses standard python for the modified cells
            # let's just try to parse it
            try:
                ast.parse(source)
                print(f"Cell {i} syntax is valid.")
            except SyntaxError as e:
                print(f"Syntax error in cell {i}: {e}")
