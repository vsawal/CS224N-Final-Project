
export SQUAD_DIR=.

python run_squad.py \
  --bert_model bert-base-uncased \
  --squad_model bert_deep \
  --do_train \
  --do_predict \
  --do_lower_case \
  --train_file $SQUAD_DIR/data/train-v2.0-augmented-trimmed.json \
  --predict_file $SQUAD_DIR/data/dev-v2.0.json \
  --train_batch_size 12 \
  --learning_rate 3e-5 \
  --num_train_epochs 2.0 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --version_2_with_negative \
  --output_dir $SQUAD_DIR/output

