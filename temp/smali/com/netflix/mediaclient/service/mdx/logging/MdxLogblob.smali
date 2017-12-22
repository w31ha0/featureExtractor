.class public Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;
.super Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;
.source "MdxLogblob.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_mdxLogblob"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "event"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string/jumbo v1, "nf_mdxLogblob"

    const-string/jumbo v2, "MdxLogblob"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    .line 61
    :try_start_0
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;->mSeverity:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "event"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "errormsg"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string/jumbo v1, "nf_mdxLogblob"

    const-string/jumbo v2, "MdxLogblob"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->MDX_LOGBLOB_TYPE:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
