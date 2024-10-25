import streamlit as st
import subprocess

st.title("Minecraft Bot Controller")
st.write("Use this interface to start and stop your Minecraft bot.")

if st.button("Start Bot"):
    process = subprocess.Popen(["node", "index.js"])
    st.write("Bot has started. Monitor console for activity.")

if st.button("Stop Bot"):
    process.terminate()
    st.write("Bot has been stopped.")
