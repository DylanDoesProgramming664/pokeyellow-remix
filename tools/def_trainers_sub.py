#!/usr/bin/env python
import re
import sys


def process_file(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.readlines()

    # Find all trainer headers with their associated events
    location = None

    # Look for the pattern: def_trainers LOCATION first
    def_trainers_pattern = r'^(\s*)def_trainers\s+LOCATION'

    for i, line in enumerate(content):
        # If we find def_trainers2 LOCATION,
        # capture its position and look for a corresponding event
        def_match = re.match(def_trainers_pattern, line)
        if def_match:
            # Look for the next trainer header that contains
            # EVENT_BEAT_<LOCATION>_TRAINER_0 within reasonable distance
            for j in range(i+1, min(len(content), i+20)):  # Look forward up to 20 lines
                event_match = re.search(
                    r'trainer\s+EVENT_BEAT_([A-Z0-9_]+)_TRAINER_\d,',
                    content[j])
                if event_match:
                    location = event_match.group(1)
                    break

            if location:
                # Replace the line
                indent = def_match.group(1)
                content[i] = f"{indent}def_trainers {
                    location}_TRAINER_EVENT_OFFSET ; replaced by def_trainers_sub.py\n"
                print(
                    f"Replaced: def_trainers LOCATION -> {content[i]}")
                break

    # Write back to file
    with open(filepath, 'w', encoding='utf-8') as f:
        f.writelines(content)


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print(f"Usage: python def_trainers_sub.py <filename>")
        sys.exit(1)

    filename = sys.argv[1]
    process_file(filename)
    print(f"Processing completed for {filename}")
