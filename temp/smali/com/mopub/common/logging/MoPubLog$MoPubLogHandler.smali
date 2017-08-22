.class final Lcom/mopub/common/logging/MoPubLog$MoPubLogHandler;
.super Ljava/util/logging/Handler;
.source "MoPubLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/logging/MoPubLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MoPubLogHandler"
.end annotation


# static fields
.field private static final LEVEL_TO_LOG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/logging/Level;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 107
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$MoPubLogHandler;->LEVEL_TO_LOG:Ljava/util/Map;

    .line 120
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$MoPubLogHandler;->LEVEL_TO_LOG:Ljava/util/Map;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$MoPubLogHandler;->LEVEL_TO_LOG:Ljava/util/Map;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$MoPubLogHandler;->LEVEL_TO_LOG:Ljava/util/Map;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$MoPubLogHandler;->LEVEL_TO_LOG:Ljava/util/Map;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$MoPubLogHandler;->LEVEL_TO_LOG:Ljava/util/Map;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$MoPubLogHandler;->LEVEL_TO_LOG:Ljava/util/Map;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$MoPubLogHandler;->LEVEL_TO_LOG:Ljava/util/Map;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/logging/MoPubLog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mopub/common/logging/MoPubLog$1;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/mopub/common/logging/MoPubLog$MoPubLogHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 5
    .param p1, "logRecord"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/mopub/common/logging/MoPubLog$MoPubLogHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$MoPubLogHandler;->LEVEL_TO_LOG:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$MoPubLogHandler;->LEVEL_TO_LOG:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 140
    .local v2, "priority":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    .line 143
    .local v0, "error":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    :cond_0
    const-string v3, "MoPub"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v0    # "error":Ljava/lang/Throwable;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "priority":I
    :cond_1
    return-void

    .line 137
    :cond_2
    const/4 v2, 0x2

    .restart local v2    # "priority":I
    goto :goto_0
.end method
