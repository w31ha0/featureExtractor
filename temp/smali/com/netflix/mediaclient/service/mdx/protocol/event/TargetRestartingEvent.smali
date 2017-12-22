.class public final Lcom/netflix/mediaclient/service/mdx/protocol/event/TargetRestartingEvent;
.super Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;
.source "TargetRestartingEvent.java"


# static fields
.field private static final ATTR_duration:Ljava/lang/String; = "duration"

.field private static final ATTR_uuid:Ljava/lang/String; = "uuid"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private duration:I

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_targetrestarting:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/TargetRestartingEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/TargetRestartingEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/TargetRestartingEvent;->duration:I

    return v0
.end method

.method public getFromUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/TargetRestartingEvent;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "nrdp.mdx"

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 26
    const-string/jumbo v0, "uuid"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/TargetRestartingEvent;->uuid:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "duration"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/TargetRestartingEvent;->duration:I

    .line 28
    return-void
.end method
