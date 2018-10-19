FROM golang:1.11.1-alpine3.8

# Install necessary software (will compile things, will take long)
RUN apk add build-base git python3 python3-dev \
            freetype-dev libpng-dev openblas-dev ; \
    pip3 install --upgrade pip ; \
    pip3 install numpy scipy pandas scikit-learn matplotlib statsmodels
