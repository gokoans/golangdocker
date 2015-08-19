FROM scratch
ADD certs /etc/ssl/certs
ADD main /
CMD ["/main"]
