FROM ubuntu:22.04 as build
RUN mkdir /Nop && cd /Nop && \
    apt update && \
    apt install wget unzip -y && \
    wget https://github.com/nopSolutions/nopCommerce/releases/download/release-4.60.1/nopCommerce_4.60.1_NoSource_linux_x64.zip && \
    unzip /Nop/nopCommerce_4.60.1_NoSource_linux_x64.zip && \
    rm /Nop/nopCommerce_4.60.1_NoSource_linux_x64.zip
    


FROM mcr.microsoft.com/dotnet/aspnet:6.0
COPY --from=build /Nop /Nop
EXPOSE 5000
WORKDIR /Nop
CMD ["dotnet","Nop","Web","dll"]