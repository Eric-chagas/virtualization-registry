# Create binary executable from our app.go program 

FROM golang as go_binary

COPY app.go /go/src/app/

ENV GO111MODULE=auto

WORKDIR /go/src/app/

RUN go build -o app.go .

# Install alpine and run executable

FROM alpine 

WORKDIR /appexec

COPY --from=go_binary /go/src/app /appexec

RUN chmod -R 755 /appexec

ENTRYPOINT ./app.go


