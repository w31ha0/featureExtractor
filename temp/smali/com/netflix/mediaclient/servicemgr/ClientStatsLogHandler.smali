.class public interface abstract Lcom/netflix/mediaclient/servicemgr/ClientStatsLogHandler;
.super Ljava/lang/Object;
.source "ClientStatsLogHandler.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "nf_clientstats"

.field public static final MULTIHISTOGRAM_LOGTYPE:Ljava/lang/String; = "multihistogram"


# virtual methods
.method public abstract handleConnectivityChange()V
.end method

.method public abstract init(Ljava/util/concurrent/ScheduledExecutorService;Lcom/netflix/mediaclient/servicemgr/LogblobLogging;)V
.end method
