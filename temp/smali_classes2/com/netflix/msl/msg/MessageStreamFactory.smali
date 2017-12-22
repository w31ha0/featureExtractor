.class public Lcom/netflix/msl/msg/MessageStreamFactory;
.super Ljava/lang/Object;
.source "MessageStreamFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/InputStream;Ljava/util/Set;Ljava/util/Map;)Lcom/netflix/msl/msg/MessageInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/util/MslContext;",
            "Ljava/io/InputStream;",
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/msl/keyx/KeyRequestData;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/crypto/ICryptoContext;",
            ">;)",
            "Lcom/netflix/msl/msg/MessageInputStream;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/netflix/msl/msg/MessageInputStream;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netflix/msl/msg/MessageInputStream;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/io/InputStream;Ljava/util/Set;Ljava/util/Map;)V

    return-object v0
.end method

.method public createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/ErrorHeader;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/msg/MessageOutputStream;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netflix/msl/msg/MessageOutputStream;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/ErrorHeader;Lcom/netflix/msl/io/MslEncoderFormat;)V

    return-object v0
.end method

.method public createOutputStream(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/crypto/ICryptoContext;)Lcom/netflix/msl/msg/MessageOutputStream;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/netflix/msl/msg/MessageOutputStream;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netflix/msl/msg/MessageOutputStream;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/io/OutputStream;Lcom/netflix/msl/msg/MessageHeader;Lcom/netflix/msl/crypto/ICryptoContext;)V

    return-object v0
.end method
