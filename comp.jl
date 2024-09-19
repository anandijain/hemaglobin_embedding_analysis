using JSON3

read_emb(f) = collect(JSON3.read(read(f)).embedding)

x = read_emb("HBB_ginko_aa0-650M.json")
y = read_emb("HbS_ginkgo_aa0-650M.json")

d = x - y

x2 = read_emb("HBB_esm2-650M.json")
y2 = read_emb("HbS_esm2-650M.json")

x - x2

# what else can i even do with the embeddings? 