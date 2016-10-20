FROM busybox
ADD shortlivedproc.sh /
CMD [ "/shortlivedproc.sh" ]
