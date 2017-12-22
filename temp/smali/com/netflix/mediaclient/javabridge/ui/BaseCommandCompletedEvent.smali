.class public abstract Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "BaseCommandCompletedEvent.java"

# interfaces
.implements Lcom/netflix/mediaclient/event/CallbackEvent;


# static fields
.field protected static final PROP_idx:Ljava/lang/String; = "idx"

.field protected static final PROP_result:Ljava/lang/String; = "result"

.field protected static final VALUE_COMPLETE_result:Ljava/lang/String; = "COMPLETE"


# instance fields
.field protected failed:Z

.field protected idx:I

.field protected result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getCallerId()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;->idx:I

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;->result:Ljava/lang/String;

    return-object v0
.end method

.method public isFailed()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;->failed:Z

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string/jumbo v0, "idx"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;->idx:I

    .line 60
    const-string/jumbo v0, "result"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;->failed:Z

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
