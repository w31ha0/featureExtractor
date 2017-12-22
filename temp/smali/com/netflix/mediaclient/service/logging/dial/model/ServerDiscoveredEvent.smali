.class public Lcom/netflix/mediaclient/service/logging/dial/model/ServerDiscoveredEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "ServerDiscoveredEvent.java"


# static fields
.field protected static final DESCRIPTION:Ljava/lang/String; = "deviceDescription"

.field protected static final ESN:Ljava/lang/String; = "esn"

.field protected static final HEADERS:Ljava/lang/String; = "discoveryResponseHeaders"

.field protected static final NAME:Ljava/lang/String; = "serverDiscovered"


# instance fields
.field private mDeviceDesciption:Ljava/lang/String;

.field private mDiscoveryResponseHeaders:Ljava/lang/String;

.field private mEsn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 32
    const-string/jumbo v0, "dial"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/dial/model/ServerDiscoveredEvent;->category:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "serverDiscovered"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/dial/model/ServerDiscoveredEvent;->name:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/dial/model/ServerDiscoveredEvent;->mEsn:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/dial/model/ServerDiscoveredEvent;->mDeviceDesciption:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/dial/model/ServerDiscoveredEvent;->mDiscoveryResponseHeaders:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/dial/model/ServerDiscoveredEvent;->mEsn:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-string/jumbo v1, "esn"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/dial/model/ServerDiscoveredEvent;->mEsn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/dial/model/ServerDiscoveredEvent;->mDiscoveryResponseHeaders:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    const-string/jumbo v1, "discoveryResponseHeaders"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/dial/model/ServerDiscoveredEvent;->mDiscoveryResponseHeaders:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/dial/model/ServerDiscoveredEvent;->mDeviceDesciption:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    const-string/jumbo v1, "deviceDescription"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/dial/model/ServerDiscoveredEvent;->mDeviceDesciption:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :cond_3
    return-object v0
.end method
