import argparse
import datetime
import subprocess
import os
from Library.Variables.Config import PROCESS_COUNT


def run_robot_test(test_suite, processes):
    print('Process Count = '+str(PROCESS_COUNT))
    suite_name = (test_suite.split('/'))[-1].lower()
    timestamp = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    output_dir = os.path.abspath("Results")         # Absolute Directory
    os.makedirs(output_dir, exist_ok=True)          # Create if directory does not exists

    robot_command = [
        'pabot',
        '--processes', str(processes),
        '--outputdir', output_dir,
        '--log', f'log_{suite_name}_{timestamp}.html',
        '--report', f'report_{suite_name}_{timestamp}.html',
        '--xunit', f'xunit_{suite_name}_{timestamp}.xml',
        test_suite
    ]

    print(f"Running command: {' '.join(robot_command)}")
    subprocess.run(robot_command)


def parse_argument():
    parser = argparse.ArgumentParser(description='Run Robot Framework test suites.')

    parser.add_argument(
        '--suite',
        type=str,
        default='Tests/Regression',
        help='Directory containing Robot Framework test suite'
    )

    parser.add_argument(
        '--processes',
        type=int,
        default=PROCESS_COUNT,
        help='Number of processes that runs parallaly'
    )

    return parser.parse_args()


if __name__ == '__main__':
    args = parse_argument()
    run_robot_test(args.suite, args.processes)
