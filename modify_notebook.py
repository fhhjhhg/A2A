import json

with open('instructor_large.ipynb', 'r', encoding='utf-8') as f:
    notebook = json.load(f)

for i, cell in enumerate(notebook['cells']):
    if cell['cell_type'] == 'code':
        source = cell['source']
        if any('for new_chunk in' in line for line in source) and any('display(Markdown' in line for line in source):
            if not any('import time' in line for line in source):
                source.insert(0, 'import time\n')

            for j, line in enumerate(source):
                if 'accumulated_content = ""' in line:
                    indent_str = line[:len(line)-len(line.lstrip())]
                    source[j] = line.replace('accumulated_content = ""', f'accumulated_chunks = []\n{indent_str}last_update_time = 0')
                elif 'accumulated_content += new_chunk' in line:
                    indent_str = line[:len(line)-len(line.lstrip())]
                    source[j] = line.replace('accumulated_content += new_chunk', f'accumulated_chunks.append(new_chunk)\n{indent_str}current_time = time.time()')
                elif 'clear_output(wait=True)' in line and j < len(source)-1 and 'display(Markdown' in source[j+1]:
                    indent = len(line) - len(line.lstrip())
                    ind = ' ' * indent
                    out_ind = ind[:-4] if len(ind) >= 4 else ''
                    source[j] = f'{ind}if current_time - last_update_time > 0.1:  # noqa: PLR2004\n{ind}    clear_output(wait=True)\n'
                    source[j+1] = f'{ind}    display(Markdown("".join(accumulated_chunks)))\n{ind}    last_update_time = current_time\n{out_ind}clear_output(wait=True)\n{out_ind}display(Markdown("".join(accumulated_chunks)))\n'

            cell['outputs'] = []
            cell['execution_count'] = None

with open('instructor_large.ipynb', 'w', encoding='utf-8') as f:
    json.dump(notebook, f, indent=2, ensure_ascii=False)
    f.write('\n')
