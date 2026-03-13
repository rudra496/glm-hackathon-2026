document.getElementById('generate').addEventListener('click', () => {
  const prompt = document.getElementById('prompt').value.trim();
  const output = document.getElementById('output');
  output.textContent = prompt
    ? `Placeholder response for: ${prompt}\n\nConnect this to your Z.ai API integration.`
    : 'Please enter a prompt first.';
});
