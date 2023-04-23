# A PyTorch container,
# with examples installed

# Works, see https://github.com/richelbilderbeek/tidyverse_singularity
Bootstrap: docker
From: pytorch/pytorch:latest

%post
    # From https://github.com/brucemoran/Singularity/blob/8eb44591284ffb29056d234c47bf8b1473637805/shub/bases/recipe.CentOs7-R_3.5.2#L21
    echo 'export LANG=en_US.UTF-8 LANGUAGE=C LC_ALL=C LC_CTYPE=C LC_COLLATE=C  LC_TIME=C LC_MONETARY=C LC_PAPER=C LC_MEASUREMENT=C' >> $SINGULARITY_ENVIRONMENT

    pip install pytorch-lightning omegaconf Cython nemo_toolkit[all]
    
    apt-get -y update
    apt-get -y install git wget


    git clone https://github.com/NVIDIA/NeMo /opt/NeMo --depth 1
    wget https://raw.githubusercontent.com/richelbilderbeek/pytorch_duplex_text_normalization_singularity/master/validation_10000.txt --output-document /opt/NeMo/examples/nlp/duplex_text_normalization/validation_10000.txt
    wget https://raw.githubusercontent.com/richelbilderbeek/pytorch_duplex_text_normalization_singularity/master/train_10000.txt --output-document /opt/NeMo/examples/nlp/duplex_text_normalization/train_10000.txt

%runscript
echo "'pytorch.sif' running with arguments '$@'"
exec "$@"

%test
    cd /opt/NeMo/examples/nlp/duplex_text_normalization
    python3 duplex_text_normalization_train.py \
        data.validation_ds.data_path=/opt/NeMo/examples/nlp/duplex_text_normalization/validation_10000.txt \
        data.train_ds.data_path=/opt/NeMo/examples/nlp/duplex_text_normalization/train_10000.txt \
        mode={tn,itn,joint} \
        lang={en,ru,de}

%help

This container has PyTorch installed and some example running,

%labels

    AUTHOR Richel J.C. Bilderbeek

    NAME ticket_272562

    DESCRIPTION PyTorch and example

    USAGE simply run the container

    URL https://github.com/richelbilderbeek/ticket_272562

    VERSION 0.1
