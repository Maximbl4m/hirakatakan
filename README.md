# HiraKataKan

🚧 **Project Status: Under Development** 🚧  
This project is currently under active development and is not yet ready for production use. Features and functionality are subject to change.

![Project Status](https://img.shields.io/badge/status-under_development-orange)

...

This is a Docker-based web application designed to help users practice recognizing Hiragana, Katakana, and Kanji, similar to the learning experience provided by Duolingo, but with additional customization options for different learning modes and difficulty levels.

## Features

- **Backend**: Python (Flask or FastAPI)
- **Frontend**: ReactJS
- **Dockerized Setup**: Easy deployment with Docker and Docker Compose
- **User-Friendly Interface**: Different learning modes and adjustable levels of difficulty
- **User Authentication**: Personalized progress tracking and learning history

## Getting Started

### Prerequisites

- Docker installed on your machine

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/Maximbl4m/hirakatakan.git
   ```
2. Navigate to the project directory:
   ```sh
   cd hirakatakan
   ```

### Building and Running the Docker Image

1. Build the Docker image:
   ```sh
   docker build -t hirakatakan .
   ```
2. Run the Docker container:
   ```sh
   docker run -p 4096:4096 hirakatakan
   ```

### Usage

After starting the Docker container, open your web browser and go to `http://127.0.0.1:4096` to start learning Hiragana & Katakana.

## Contributing

Contributions are welcome! If you'd like to help improve this application, please submit issues or pull requests.

## License

This project is licensed under the MIT License.

