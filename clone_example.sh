#!/bin/bash
git clone https://github.com/NVIDIA/NeMo --depth 1
wget https://raw.githubusercontent.com/richelbilderbeek/pytorch_duplex_text_normalization_singularity/master/validation_10000.txt /opt/NeMo/examples/nlp/duplex_text_normalization
wget https://raw.githubusercontent.com/richelbilderbeek/pytorch_duplex_text_normalization_singularity/master/train_10000.txt /opt/NeMo/examples/nlp/duplex_text_normalization
