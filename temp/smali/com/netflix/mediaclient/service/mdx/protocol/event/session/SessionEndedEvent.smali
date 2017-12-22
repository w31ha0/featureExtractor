.class public Lcom/netflix/mediaclient/service/mdx/protocol/event/session/SessionEndedEvent;
.super Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;
.source "SessionEndedEvent.java"


# static fields
.field private static final ATTR_sid:Ljava/lang/String; = "sid"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private sid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_sessionended:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/SessionEndedEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/SessionEndedEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/MdxEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getSid()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/SessionEndedEvent;->sid:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "sid"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/SessionEndedEvent;->sid:I

    .line 43
    return-void
.end method
