mazes=(umaze medium large)
for i in 0 1 2
do
    maze=${mazes[$i]}
    python ../relabel_antmaze_rewards.py --env_name antmaze-$maze-diverse-v1 --relabel_type sparse --filename ./datasets/raw_dataset_without_relabel/Antmaze_${maze}_multistart_False_multigoal_False.hdf5 
    # python ../relabel_maze2d_rewards.py --maze $maze --relabel_type sparse --filename maze2d-${maze}-v1.hdf5 
done


