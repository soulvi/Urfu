from transformers import pipeline

classifier = pipeline("sentiment-analysis",   
"blanchefort/rubert-base-cased-sentiment")

classifier("I adore machine learning")
