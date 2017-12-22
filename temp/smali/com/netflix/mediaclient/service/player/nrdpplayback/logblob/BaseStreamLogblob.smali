.class abstract Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;
.super Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;
.source "BaseStreamLogblob.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StreamLogblob;


# static fields
.field public static final SESSION_TIME_OFFSET_IN_MS:Ljava/lang/String; = "soffms"

.field public static final XID:Ljava/lang/String; = "xid"


# instance fields
.field protected mXid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;->mXid:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "xid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;->mXid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    return-void
.end method


# virtual methods
.method public getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;->mXid:Ljava/lang/String;

    return-object v0
.end method

.method updateSeverity(Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 47
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;->mSeverity:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 48
    :cond_0
    return-void
.end method
