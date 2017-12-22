.class public Lcom/netflix/mediaclient/service/mdx/protocol/event/StateEvent;
.super Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;
.source "StateEvent.java"


# static fields
.field private static final ATTR_status:Ljava/lang/String; = "status"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

.field private static final VALUE_status_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field private static final VALUE_status_READY:Ljava/lang/String; = "READY"


# instance fields
.field private ready:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_mdxstate:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/StateEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/StateEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 39
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/StateEvent;->ready:Z

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "status"

    const-string/jumbo v1, "NOT_READY"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string/jumbo v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/StateEvent;->ready:Z

    .line 48
    return-void
.end method
