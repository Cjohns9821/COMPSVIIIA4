# Assignment #4: Application Containerization

This is a simple Node.js web application designed for learning Docker containerization concepts.

## Application Overview

This application is a basic Express.js web server that:
- Serves a static HTML page at the root (`/`)
- Provides an API status endpoint at `/api/status`
- Includes a health check endpoint at `/health`
- Runs on port 3000 by default (configurable via PORT environment variable)

## What's Included

- **app.js**: Main application server file
- **package.json**: Node.js dependencies and project configuration
- **public/index.html**: Static HTML page that confirms successful containerization
- **public/style.css**: Styling for the web page

## Running Without Docker (for reference only)

If you wanted to run this application directly (not required for assignment):
```bash
npm install
npm start
```

## Your Docker Assignment

**DO NOT MODIFY THE APPLICATION CODE**

Your task is to containerize this existing application using Docker. You need to:

1. Create a `Dockerfile` that properly containerizes this Node.js application
2. Build a Docker image from your Dockerfile
3. Run a container from your image
4. Verify the application works by accessing it in your browser

## Starting the Application

- To build the docker image run the command:




https://automatic-orbit-x56r6jr5jwqrf69vr-3000.app.github.dev/

- To run your docker container in port 3000 run the command:



https://automatic-orbit-x56r6jr5jwqrf69vr-3000.app.github.dev/api/status

## Reflection Question
**Answer the following question in the space below**: How does containerization with Docker differ from using virtual machines, and why might a development team choose Docker containers over VMs for deploying applications like the one you just containerized?

Docker containers differ from virtual machines because containers share the host operating system’s kernel, while virtual machines each run their own full guest operating system.  
This makes containers much lighter, faster to start, and more resource‑efficient than VMs.

A virtual machine includes an entire OS, its own kernel, and hardware virtualization. 
Because of that, VMs take longer to boot, use more memory and CPU, and require more overhead to manage.

A Docker container, on the other hand, packages only the application and its dependencies. It runs on top of the host OS kernel, which means:

Containers start in seconds instead of minutes

They use far fewer resources

They are easier to ship, update, and scale

They behave the same in every environment (“works on my machine” goes away)

A development team would choose Docker containers over VMs because containers make deployment faster, more consistent, and more efficient.  
For an application like the one you containerized, Docker ensures every developer and every environment runs the exact same setup — no OS differences, no missing dependencies, and no configuration drift. 
This leads to smoother collaboration, simpler CI/CD pipelines, and more reliable production deployments.

Also, on a less professional note, it hurts to admit I had successfully activated the port and didn't realize it was open because I was working in Github Codespaces.
About 10 minutes testing different command to find the port before realizing there's a button that loudly announces itself as PORTS. 
I was running around in Command Prompt, Docker and Git before I saw PORTS. I thought I should add that to my document.


## Application Requirements for Docker

Your Dockerfile should ensure:
- The application has Node.js runtime available
- All application files are copied into the container
- Dependencies are installed (`npm install`)
- Port 3000 is exposed
- The application starts with `npm start`
- The container can be accessed from your host machine

## Verification

When your Docker container is running correctly:
- Navigate to `http://localhost:3000` (or whatever port you mapped)
- You should see a success page confirming containerization worked
- The `/api/status` endpoint should return JSON status information

## Troubleshooting Tips

- Make sure your port mapping is correct in the `docker run` command
- Check that all files are copied into the container
- Verify Node.js dependencies are installed in the container
- Use `docker logs <container-name>` to see application output

## File Structure Expected
```
docker-assignment/
├── Dockerfile          # You create this
├── app.js              # Provided
├── package.json        # Provided
├── public/             # Provided
│   ├── index.html      # Provided
│   └── style.css       # Provided
└── README.md           # This file
```

Good luck with your Docker containerization!
