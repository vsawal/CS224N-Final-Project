export SQUAD_DIR=./

python run_squad.py \
  --bert_model bert-base-uncased \
  --squad_model bert_deep \
  --do_predict \
  --do_lower_case \
  --predict_file $SQUAD_DIR/data/test-v2.0.json \
  --max_seq_length 384 \
  --doc_stride 128 \
  --version_2_with_negative \
  --output_dir $SQUAD_DIR/output/
