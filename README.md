# Satwik React Application

## Overview
This is a React application named "satwik" that features an ambient colorful background. It is designed to be easily deployable to both EC2 and Docker environments.

## Project Structure
```
satwik
├── public
│   └── index.html
├── src
│   ├── App.tsx
│   ├── index.tsx
│   └── styles
│       └── background.css
├── .dockerignore
├── Dockerfile
├── package.json
├── tsconfig.json
├── README.md
└── deploy
    └── ec2-deploy.sh
```

## Getting Started

### Prerequisites
- Node.js (version 14 or higher)
- npm (Node package manager)
- Docker (for containerization)
- AWS CLI (for EC2 deployment)

### Installation
1. Clone the repository:
   ```
   git clone <repository-url>
   cd satwik
   ```

2. Install dependencies:
   ```
   npm install
   ```

### Running the Application
To run the application locally, use the following command:
```
npm start
```
This will start the development server and open the application in your default web browser.

### Building for Production
To create a production build of the application, run:
```
npm run build
```
This will generate a `build` directory containing the optimized application.

## Deployment

### Docker Deployment
1. Build the Docker image:
   ```
   docker build -t satwik .
   ```

2. Run the Docker container:
   ```
   docker run -p 3000:3000 satwik
   ```

### EC2 Deployment
1. Run the deployment script:
   ```
   bash deploy/ec2-deploy.sh
   ```

## License
This project is licensed under the MIT License. See the LICENSE file for details.