FROM node:16-alpine

# Update
RUN apk add --no-cache libc6-compat
RUN apk update

# install pnpm
RUN wget -qO /bin/pnpm "https://github.com/pnpm/pnpm/releases/latest/download/pnpm-linuxstatic-x64" && chmod +x /bin/pnpm

# Configure pnpm global
ENV PNPM_HOME=/pnpm-test/.pnpm
ENV PATH=$PATH:$PNPM_HOME

RUN pnpm i

EXPOSE 8055

CMD ["pnpm", "start"]
