.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
.super Ljava/lang/Object;
.source "UmaAlert.java"


# static fields
.field public static final ACTION_UMA_MESSAGE_CONSUMED:Ljava/lang/String; = "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_CONSUMED"

.field public static final ACTION_UMA_MESSAGE_UPDATED:Ljava/lang/String; = "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_UPDATED"

.field static final FIELD_UMA:Ljava/lang/String; = "umaAlert"

.field public static final TYPE_ERROR:Ljava/lang/String; = "ERROR"

.field public static final TYPE_INFO:Ljava/lang/String; = "INFO"

.field public static final TYPE_WARN:Ljava/lang/String; = "WARN"

.field private static final UMA_STALE_TIMEOUT_MILLIS:J


# instance fields
.field private mConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->UMA_STALE_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->mConsumed:Z

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract abTestCell()I
.end method

.method public abstract abTestId()I
.end method

.method public abstract blocking()Z
.end method

.method public abstract body()Ljava/lang/String;
.end method

.method public abstract cta1()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;
.end method

.method public abstract cta2()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;
.end method

.method public isConsumed()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->mConsumed:Z

    return v0
.end method

.method public isStale()Z
    .locals 4

    .prologue
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->timestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->UMA_STALE_TIMEOUT_MILLIS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract locale()Ljava/lang/String;
.end method

.method public abstract messageId()J
.end method

.method public abstract messageName()Ljava/lang/String;
.end method

.method public setConsumed(Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->mConsumed:Z

    .line 83
    return-void
.end method

.method public abstract timestamp()J
.end method

.method public abstract title()Ljava/lang/String;
.end method

.method public abstract trackingInfo()Ljava/lang/String;
.end method

.method public abstract viewType()Ljava/lang/String;
.end method
