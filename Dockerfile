FROM mcr.microsoft.com/dotnet/aspnet:6.0
RUN apt install unzip -y && \
    wget https://github.com/nopSolutions/nopCommerce/releases/download/release-4.60.1/nopCommerce_4.60.1_NoSource_linux_x64.zip && \
    unzip nopCommerce_4.60.1_NoSource_linux_x64.zip && \
EXPOSE 5000
CMD ["dotnet","Nop","Web","dll"]