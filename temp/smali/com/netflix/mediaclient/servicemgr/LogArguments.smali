.class public final Lcom/netflix/mediaclient/servicemgr/LogArguments;
.super Ljava/lang/Object;
.source "LogArguments.java"


# static fields
.field public static final LOG_LEVEL:Ljava/lang/String; = "logLevel"

.field public static final MSG:Ljava/lang/String; = "msg"

.field public static final TAGS:Ljava/lang/String; = "tags"

.field public static final TRACEAREA:Ljava/lang/String; = "traceArea"

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field public logLevel:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

.field public msg:Ljava/lang/String;

.field public tags:[Ljava/lang/String;

.field public traceArea:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Log level can not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    if-nez p2, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Log msg can not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    if-nez p3, :cond_2

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Log type can not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/LogArguments;->logLevel:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 73
    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/LogArguments;->msg:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/LogArguments;->type:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/netflix/mediaclient/servicemgr/LogArguments;->tags:[Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 85
    const-string/jumbo v1, "logLevel"

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/LogArguments;->logLevel:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevelInString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v1, "msg"

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/LogArguments;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v1, "traceArea"

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/LogArguments;->traceArea:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/LogArguments;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v1, "tags"

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/LogArguments;->tags:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    return-object v0
.end method
