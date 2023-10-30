from setuptools import setup

setup(
  name='flask_on_k8s',
  version='0.0.1',
  description='flask_on_k8s',
  packages=['flask_on_k8s']
  include_package_data=True,
  install_requires=['flask']
)
