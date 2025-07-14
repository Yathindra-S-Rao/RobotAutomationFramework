import argparse
import datetime
import subprocess
import os
import sys


def run_robot_test(test_suite):
    robot_command = [
        'robot',                                    # Calling Robot Framework
        '--outputdir', '/Results',                  # Specify where to save the report
        '--log', f'log_{datetime.datetime}.html',                        # Specify the name of the log file
        '--report', f'report_{datetime.datetime}.html',                  # Specify the name of the report file
        '--xunit', f'xunit_{datetime.datetime}.xml',                     # If you need the xUnit result format
        test_suite                                  # The directory containing the tests to run
    ]

    subprocess.run(robot_command)


def parse_argument():
    parser = argparse.ArgumentParser(description='Available modes are as follows')

    parser.add_argument(
        '--suite',
        type=str,
        default='/Smoke',
        help='Directory containing robot framework test suite'
    )

    return parser.parse_args()


if __name__ == '__main__':
    args = parse_argument()
    run_robot_test(args.test_dir)
