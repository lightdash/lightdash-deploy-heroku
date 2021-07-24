FROM lightdash/lightdash:latest

COPY ./lightdash.yml /usr/app/lightdash.yml
COPY ./entrypoint.sh /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
CMD ["yarn", "start"]
