# Octopress on docker

Import your octopress blog in docker through this
base container.

Simply add to your blog a dockerfile like this:

```
FROM odino/docker-octopress

COPY . /src
WORKDIR /src
RUN bundle install
```

then build it, run it and access it:

```
docker build -t yourname/yourblog .

docker run -p 4000:4000 yourname/yourblog

$ rake preview
```

Easy as hell, man.

> A lot of things can be added here, like
> setting up the github pages and so on...when
> I have time: for now it runs my own blog
> and I am happy with it so that I don't need
> to play around with ruby :)
