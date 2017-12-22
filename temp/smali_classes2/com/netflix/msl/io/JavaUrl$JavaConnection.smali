.class public Lcom/netflix/msl/io/JavaUrl$JavaConnection;
.super Ljava/lang/Object;
.source "JavaUrl.java"

# interfaces
.implements Lcom/netflix/msl/io/Url$Connection;


# instance fields
.field private final conn:Ljava/net/URLConnection;

.field final synthetic this$0:Lcom/netflix/msl/io/JavaUrl;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/io/JavaUrl;Ljava/net/URLConnection;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/netflix/msl/io/JavaUrl$JavaConnection;->this$0:Lcom/netflix/msl/io/JavaUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/netflix/msl/io/JavaUrl$JavaConnection;->conn:Ljava/net/URLConnection;

    .line 41
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/msl/io/JavaUrl$JavaConnection;->conn:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/msl/io/JavaUrl$JavaConnection;->conn:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
