# actions-rsync-deploy
GitHub Action used to deploy files using rsync

Example usage to sync everything in the workspace folder:
```
      - name: Deploy with rsync
        uses: Flaconi/actions-rsync-deploy
        env:
          DEPLOY_KEY: ${{ secrets.SSH_KEY }}
          ARGS: "-e -c -r  --exclude logs --exclude .git"
          SERVER_PORT: "22"
          FOLDER: ""
          SERVER_IP: "server.flaconi.net"
          USERNAME: "ubuntu"
          SERVER_DESTINATION: "/home/ubuntu/folder/"
```
