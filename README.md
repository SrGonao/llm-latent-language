Re-implementation of “Do Llamas Work in English? On the Latent Language of Multilingual Transformers” https://arxiv.org/abs/2402.10588 using Tuned-Lens.

Added new types that can be called from plot_grid.sh (logit, tuned, tuned-chinese, tuned-chinese-en). 

Logit is the original implementation (but using the logit lens provided by the Tuned-lens library), tuned is the tuned lens (trained on slimpj), tuned-chinese is the model with the tuned lens trained solely on the chinese language, and tuned-chinese-en is the model with the tuned lens trained solely chinese but using english as the latent language.

The english tuned lenses can be used as is but the chinese lenses have to be downloaded (https://huggingface.co/MrGonao/llama7b-tunedlens-chinese, https://huggingface.co/MrGonao/llama13b-tunedlens-chinese)

