.class public Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/SendMessage;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SendMessage.java"


# static fields
.field public static final METHOD:Ljava/lang/String; = "sendMessage"

.field public static final PROPERTY_messageName:Ljava/lang/String; = "messageName"

.field public static final PROPERTY_messageObject:Ljava/lang/String; = "messageObject"

.field public static final PROPERTY_sessionId:Ljava/lang/String; = "sessionId"

.field public static final PROPERTY_xid:Ljava/lang/String; = "xid"

.field private static final TARGET:Ljava/lang/String; = "mdx"


# instance fields
.field private xid:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "mdx"

    const-string/jumbo v1, "sendMessage"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->nextTransactionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/SendMessage;->xid:J

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/SendMessage;->setArguments(ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 45
    return-void
.end method

.method private setArguments(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 52
    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 56
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v1, "messageName"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v1, "messageObject"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v1, "xid"

    iget-wide v2, p0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/SendMessage;->xid:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/SendMessage;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getXid()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/SendMessage;->xid:J

    return-wide v0
.end method
