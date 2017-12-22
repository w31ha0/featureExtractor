.class public Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceFoundEvent;
.super Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;
.source "DeviceFoundEvent.java"


# static fields
.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private device:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicefound:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceFoundEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceFoundEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceFoundEvent;->device:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceFoundEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getRemoteDevice()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceFoundEvent;->device:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 46
    invoke-static {p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->toRemoteDevice(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceFoundEvent;->device:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    .line 47
    return-void
.end method
