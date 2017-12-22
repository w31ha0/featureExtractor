.class public Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;
.super Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;
.source "RemoteDeviceReadyEvent.java"


# static fields
.field private static final ATTR_dialUsn:Ljava/lang/String; = "dialUsn"

.field private static final ATTR_launchStatus:Ljava/lang/String; = "launchStatus"

.field private static final ATTR_uuid:Ljava/lang/String; = "uuid"

.field private static final DIALUSN_PREFIX:Ljava/lang/String; = "uuid:"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private mDialUsn:Ljava/lang/String;

.field private mLaunchStatus:I

.field private mUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_remoteDeviceReady:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->mUuid:Ljava/lang/String;

    .line 47
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->mLaunchStatus:I

    .line 48
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getDialUsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->mDialUsn:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchStatus()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->mLaunchStatus:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const-string/jumbo v0, "dialUsn"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->mDialUsn:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "uuid"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->mUuid:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "launchStatus"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->mLaunchStatus:I

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->mUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->mDialUsn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->mDialUsn:Ljava/lang/String;

    const-string/jumbo v1, "uuid:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->mUuid:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method
