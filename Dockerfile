FROM golang:1.11.1-alpine3.8

# Install necessary software (will compile things, will take long)
RUN apk add git python3 \
            build-base python3-dev freetype-dev libpng-dev openblas-dev ; \

    pip3 install --upgrade pip ; \
    # There are no wheels for alpine, so they need to be compiled
    pip3 install numpy scipy pandas scikit-learn matplotlib ;\
    # Can be convenient for testing hypotheses
    pip3 install statsmodels ; \

    # Remove dev packages for a smaller image
    apk del build-base python3-dev freetype-dev openblas-dev libpng-dev
