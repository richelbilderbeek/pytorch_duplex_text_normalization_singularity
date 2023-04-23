#!/bin/bash
git clone https://github.com/NVIDIA/NeMo --depth 1
wget https://raw.githubusercontent.com/richelbilderbeek/pytorch_duplex_text_normalization_singularity/master/validation_10000.txt --output-document ./NeMo/examples/nlp/duplex_text_normalization/validation_10000.txt --no-clobber
wget https://raw.githubusercontent.com/richelbilderbeek/pytorch_duplex_text_normalization_singularity/master/train_10000.txt --output-document ./NeMo/examples/nlp/duplex_text_normalization/train_10000.txt --no-clobber
