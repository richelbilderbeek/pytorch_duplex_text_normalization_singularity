#!/bin/bash
#
# Run the Singularity container called `pytorch.sif`
#
# Usage:
#
# ./scripts/run_singularity_container.sh
#
#
singularity run --cleanenv pytorch.sif \
  python3 \
  /opt/NeMo/examples/nlp/duplex_text_normalization/duplex_text_normalization_train.py \
  data.validation_ds.data_path=validation_10000.txt \
  data.train_ds.data_path=train_10000.txt \
  mode={tn,itn,joint} \
  lang={en,ru,de}

#singularity run --cleanenv --bind "$PWD"/scripts/ pytorch.sif \
#  python3 /opt/NeMo/examples/nlp/duplex_text_normalization/duplex_text_normalization_train.py \
#  data.validation_ds.data_path=validation_10000.txt \
#  data.train_ds.data_path=train_10000.txt \
#  mode={tn,itn,joint} \
#  lang={en,ru,de}
