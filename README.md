kitchen-cache proof of concept
==============================

In [kitchen-dokken](https://github.com/someara/kitchen-dokken), there is a container named kitchen-cache that comes from the Docker User someara or dokken, depending on the version (1.x and 2.x respectively). In older versions of the project's README, it was stressed that you shouldn't blindly trust some random `someara` person on Docker Hub and should verify the contents of this container yourself. This repository is a proof-of-concept of building your own `kitchen-cache` container and using it for kitchen-dokken. Note that we are generating this container with the SSH key pair used in kitchen-dokken 1.x.

To build the custom `kitchen-cache` container, run `docker build -t bluth-company/kitchen-cache .`.

After building the cache container, this project's `.kitchen.yml` file specifies using it as its cache. You can test this fact by running `kitchen verify` and `docker ps | grep kitchen-cache`. You should see the cache container used belongs to our example company, `bluth-company`.
