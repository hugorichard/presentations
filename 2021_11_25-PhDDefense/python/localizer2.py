import nibabel
import nilearn
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from nilearn import plotting, surface
from nilearn.datasets import fetch_localizer_contrasts, fetch_localizer_first_level
from nilearn.glm.contrasts import compute_contrast
from nilearn.glm.first_level import make_first_level_design_matrix, run_glm
from nilearn.image import index_img, mean_img, math_img

t_r = 2.4
slice_time_ref = 0.5


data = fetch_localizer_first_level()
fsaverage = nilearn.datasets.fetch_surf_fsaverage()
fmri_img = data.epi_img

imgs = fetch_localizer_contrasts(["left vs right button press"], n_subjects=10, get_tmaps=True)["tmaps"]

for i, img in enumerate(imgs):
    texture = surface.vol_to_surf(img, fsaverage.pial_right)
    texture
    plotting.plot_surf(
        fsaverage.infl_right, texture, hemi='right',
        threshold=0., bg_map=fsaverage.sulc_right, cmap="bwr", vmax=6)
    plt.savefig("lr_button_%i.png" % i, bbox_inches="tight", transparent=True)
