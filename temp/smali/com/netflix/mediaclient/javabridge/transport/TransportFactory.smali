.class public Lcom/netflix/mediaclient/javabridge/transport/TransportFactory;
.super Ljava/lang/Object;
.source "TransportFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static createTransport(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/Bridge;Lcom/netflix/mediaclient/javabridge/NrdProxy;)Lcom/netflix/mediaclient/javabridge/transport/Transport;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;Lcom/netflix/mediaclient/javabridge/NrdProxy;)V

    return-object v0
.end method
