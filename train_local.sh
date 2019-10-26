#python run_squad.py --bert_model bert-base-uncased --output_dir output_full_train_large
# --train_file data/train-v2.0.json --predict_file data/dev-v2.0.json --version_2_with_negative
# --do_predict --do_train  --train_batch_size 32 --local_rank -1 --fp16 --num_train_epochs 8

export SQUAD_DIR=.

python run_squad.py \
  --bert_model bert-base-uncased \
  --squad_model bert_deep \
  --do_train \
  --do_predict \
  --do_lower_case \
  --train_file $SQUAD_DIR/data/train-local-v2.0.json \
  --predict_file $SQUAD_DIR/data/dev-local-v2.0.json \
  --train_batch_size 1 \
  --learning_rate 3e-5 \
  --num_train_epochs 1.0 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --version_2_with_negative \
  --output_dir $SQUAD_DIR/output

