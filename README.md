# LLM MacOS App

## Introduction

The LLM MacOS App is a Flutter-based application designed to manage and test Large Language Models (LLMs) on macOS. It leverages the Hugging Face Transformers library to fetch, download, and test models in a user-friendly interface. The app is tailored for Apple Silicon devices, utilizing Core ML for optimal performance.

## Overview

This application provides a comprehensive dashboard for interacting with LLMs, featuring:

- A list of available transformer models from the Hugging Face library.
- Download functionality with progress tracking and folder selection.
- A terminal emulator for real-time command execution and model testing.
- Persistent storage using Hive for user settings and model data.
- A clean and intuitive user interface that emphasizes simplicity and ease of use.

## Items to Implement

1. **Model Management**
   - Fetch and display a list of available models.
   - Download models with progress tracking.
   - Store model data in Hive for persistence.

2. **User Settings**
   - Select and save a download folder.
   - Manage general settings in a UserModel.

3. **Testing Interface**
   - Implement a terminal emulator for command execution.
   - Allow users to test models with custom commands.
   - Provide a checkbox for confirming model testing.

4. **Console Output**
   - Display real-time output from executed commands.
   - Update the interface based on command results.

5. **Data Persistence**
   - Use Hive to store and update model and user data.
   - Ensure continuity across app sessions.

## Reference

For detailed implementation instructions and code examples, please refer to the [LLM MacOS App Implementation Guide](#).

---

This README provides a concise overview of the LLM MacOS App, highlighting its key features and components. The application is designed to offer a seamless experience for managing and testing LLMs, with a focus on simplicity and user-friendliness. For more detailed guidance, please follow the link to the full implementation guide.
