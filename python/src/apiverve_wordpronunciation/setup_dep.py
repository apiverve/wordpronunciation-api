from setuptools import setup, find_packages

setup(
    name='apiverve_wordpronunciation',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Word Pronunciation is a pronunciation API that retrieves the phonetic pronunciation of any English word in ARPAbet format. Pass a word to receive its phonetic transcription for speech synthesis, dictionaries, or language tools.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/wordpronunciation?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
