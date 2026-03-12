"""Minimal Python starter for hackathon participants."""

from dotenv import load_dotenv
import os


def run_demo() -> None:
    load_dotenv()
    api_key = os.getenv("ZAI_API_KEY", "demo-key-not-set")
    user_problem = "Suggest an AI idea to improve campus accessibility."

    print("[Python AI Starter]")
    print(f"API Key Loaded: {'yes' if api_key != 'demo-key-not-set' else 'no'}")
    print("Prompt:", user_problem)
    print("\nReplace this placeholder with your z.ai API call.")


if __name__ == "__main__":
    run_demo()
