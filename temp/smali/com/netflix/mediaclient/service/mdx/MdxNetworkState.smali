.class public Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;
.super Ljava/lang/Object;
.source "MdxNetworkState.java"


# instance fields
.field private connected:Z

.field private ipadress:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->name:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->ssid:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->ipadress:Ljava/lang/String;

    .line 19
    iput-boolean p4, p0, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->connected:Z

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;

    if-eqz v1, :cond_0

    .line 41
    check-cast p1, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;

    .line 42
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->ssid:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->ssid:Ljava/lang/String;

    .line 43
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->ipadress:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->ipadress:Ljava/lang/String;

    .line 44
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->connected:Z

    iget-boolean v2, p1, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->connected:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 47
    :cond_0
    return v0
.end method

.method public getIpadress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->ipadress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxNetworkState;->connected:Z

    return v0
.end method
