import streamlit as st
import pandas as pd
from PIL import Image
import string



st.write("Here's our first attempt at using data to create a table:")

# image = Image.open('sunrise.jpg')

# st.image(image, caption='Sunrise by the mountains')



# command run to  run: streamlit run appex.py

"""# deep Classifier project """

uploaded_file = st.file_uploader("Choose a file")

if uploaded_file is not None:
   image = Image.open(uploaded_file)
   st.image(image,caption="Cat")

