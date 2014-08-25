# Octopress on docker

Import your octopress blog in docker through this.

```
docker build -t yourname/yourblog .

docker run -p 4000:4000 yourname/yourblog

$ rake preview
```

Easy as hell, man.
