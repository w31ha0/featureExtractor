.class public Lcom/netflix/msl/io/JavaUrl;
.super Ljava/lang/Object;
.source "JavaUrl.java"

# interfaces
.implements Lcom/netflix/msl/io/Url;


# instance fields
.field private timeout:I

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/msl/io/JavaUrl;->timeout:I

    .line 67
    iput-object p1, p0, Lcom/netflix/msl/io/JavaUrl;->url:Ljava/net/URL;

    .line 68
    return-void
.end method


# virtual methods
.method public openConnection()Lcom/netflix/msl/io/Url$Connection;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 83
    iget-object v0, p0, Lcom/netflix/msl/io/JavaUrl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 84
    iget v1, p0, Lcom/netflix/msl/io/JavaUrl;->timeout:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 85
    iget v1, p0, Lcom/netflix/msl/io/JavaUrl;->timeout:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 86
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 87
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 88
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 89
    new-instance v1, Lcom/netflix/msl/io/JavaUrl$JavaConnection;

    invoke-direct {v1, p0, v0}, Lcom/netflix/msl/io/JavaUrl$JavaConnection;-><init>(Lcom/netflix/msl/io/JavaUrl;Ljava/net/URLConnection;)V

    return-object v1
.end method

.method public setTimeout(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/netflix/msl/io/JavaUrl;->timeout:I

    .line 76
    return-void
.end method
