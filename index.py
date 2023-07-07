import streamlit as st

from ultralytics import YOLO
import numpy as np
from PIL import Image
from io import BytesIO

import toolbox as tb

model = YOLO("yolov8n.pt")

st.write("""
    # SightAi
""")

uploaded_file = st.file_uploader("Upload an image")
if uploaded_file is not None:
    image = Image.open(BytesIO(uploaded_file.getvalue()))
    image = np.asarray(image)

    results = model.predict(image)

    boxed_image = tb.plot_bboxes(image, results[0].boxes.data, conf=0.7)

    st.image(boxed_image, caption='random test image')
