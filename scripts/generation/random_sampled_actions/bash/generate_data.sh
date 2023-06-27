mazes=(umaze medium large)
nums=(1000000 2000000 4000000)
for i in 0 1 2
do
    maze=${mazes[$i]}
    num_samples=${nums[$i]}
    python ./scripts/generate_ant_maze_datasets.py --maze ${maze} --num_samples ${num_samples}
    # python ./scripts/generate_maze2d_datasets.py --env_name maze2d-${maze}-v1 --num_samples ${num_samples}
done
