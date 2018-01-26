.class public Lorg/apache/http/client/protocol/ResponseContentEncoding;
.super Ljava/lang/Object;
.source "ResponseContentEncoding.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 11
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 75
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_1

    .line 76
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 77
    .local v1, "ceheader":Lorg/apache/http/Header;
    if-eqz v1, :cond_1

    .line 78
    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v4

    .line 79
    .local v4, "codecs":[Lorg/apache/http/HeaderElement;
    move-object v0, v4

    .local v0, "arr$":[Lorg/apache/http/HeaderElement;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    if-ge v6, v7, :cond_1

    aget-object v2, v0, v6

    .line 80
    .local v2, "codec":Lorg/apache/http/HeaderElement;
    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "codecname":Ljava/lang/String;
    const-string v8, "gzip"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "x-gzip"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 82
    :cond_0
    new-instance v8, Lorg/apache/http/client/entity/GzipDecompressingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/client/entity/GzipDecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 97
    .end local v0    # "arr$":[Lorg/apache/http/HeaderElement;
    .end local v1    # "ceheader":Lorg/apache/http/Header;
    .end local v2    # "codec":Lorg/apache/http/HeaderElement;
    .end local v3    # "codecname":Ljava/lang/String;
    .end local v4    # "codecs":[Lorg/apache/http/HeaderElement;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_1
    :goto_0
    return-void

    .line 84
    .restart local v0    # "arr$":[Lorg/apache/http/HeaderElement;
    .restart local v1    # "ceheader":Lorg/apache/http/Header;
    .restart local v2    # "codec":Lorg/apache/http/HeaderElement;
    .restart local v3    # "codecname":Ljava/lang/String;
    .restart local v4    # "codecs":[Lorg/apache/http/HeaderElement;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_2
    const-string v8, "deflate"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 85
    new-instance v8, Lorg/apache/http/client/entity/DeflateDecompressingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/client/entity/DeflateDecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 87
    :cond_3
    const-string v8, "identity"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 92
    new-instance v8, Lorg/apache/http/HttpException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported Content-Coding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
