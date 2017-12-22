.class public Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;
.super Lcom/netflix/mediaclient/service/pservice/PServiceAgent;
.source "PServiceFetchAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;
.implements Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServicePartnerFetchInterface;


# static fields
.field public static final PARTNER_EXP_DEFAULT:Ljava/lang/String; = "default"

.field private static final TAG:Ljava/lang/String; = "nf_preapp_fetchagent"

.field public static final WIDGET_EXP_DEFAULT:Ljava/lang/String; = "default"


# instance fields
.field private initDone:Z

.field private mDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

.field private mLoadFromDiskInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;Z)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->setLoadFromDiskInProgress(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->mDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->initDone:Z

    return v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->initDone:Z

    return p1
.end method

.method private isLoadInProgress()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->mLoadFromDiskInProgress:Z

    return v0
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->refreshDataAndNotify(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method private setLoadFromDiskInProgress(Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->mLoadFromDiskInProgress:Z

    .line 97
    return-void
.end method


# virtual methods
.method completeInit()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->refreshData()V

    .line 36
    return-void
.end method

.method protected doInit()V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->completeInit()V

    .line 31
    return-void
.end method

.method public fetchVideosForPartner(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->mDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    if-nez v1, :cond_1

    .line 102
    const-string/jumbo v1, "nf_preapp_fetchagent"

    const-string/jumbo v2, "mDiskData is null - ignoring request"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return-object v0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->mDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest;->getVideoCountOfListForPartnerExp(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result v2

    .line 107
    if-lez v2, :cond_0

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->mDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->getVideoListByName(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)Ljava/util/List;

    move-result-object v3

    .line 114
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 115
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getDiskData()Lcom/netflix/mediaclient/service/pservice/PDiskData;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->mDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    if-nez v0, :cond_0

    .line 123
    const-string/jumbo v0, "nf_preapp_fetchagent"

    const-string/jumbo v1, "mDiskData is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->mDiskData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    return-object v0
.end method

.method public refreshDataAndNotify(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->isLoadInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;-><init>(Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;Landroid/content/Intent;)V

    .line 80
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->setLoadFromDiskInProgress(Z)V

    .line 82
    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$2;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$2;-><init>(Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
