import streamlit as st
import subprocess

st.title("Minecraft Bot Controller")

if st.button("Start Bot"):
    process = subprocess.Popen(["bash", "start.sh"], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    st.write("Bot has started. Monitor console for activity.")

if st.button("Stop Bot"):
    process.terminate()
    st.write("Bot has been stopped.")
