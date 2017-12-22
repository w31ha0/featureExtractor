.class public final Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "UIStartupSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "uiStartup"


# instance fields
.field private mActiveABTests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomData:Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

.field private mDeepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

.field private mDestination:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

.field private mDisplay:Lcom/netflix/mediaclient/service/logging/apm/model/Display;

.field private mSearchTerm:Ljava/lang/String;

.field private mTrackId:I

.field private mTrigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;ILjava/lang/String;Ljava/util/Map;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/netflix/mediaclient/service/logging/apm/model/Display;",
            "Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;",
            "Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;-><init>(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 44
    iput p3, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrackId:I

    .line 45
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mSearchTerm:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mActiveABTests:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    .line 36
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDestination:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 37
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDisplay:Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    .line 38
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDeepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    .line 39
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mCustomData:Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    .line 40
    return-void
.end method


# virtual methods
.method public createEndedEvent(ZLcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;
    .locals 9

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mStarted:J

    sub-long v2, v0, v2

    .line 60
    new-instance v1, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDestination:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDeepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mCustomData:Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;-><init>(JLcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;ZLcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 61
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrackId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->setTrackId(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mActiveABTests:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->setActiveABTests(Ljava/util/Map;)V

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mSearchTerm:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->setSearchTerm(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->setError(Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDisplay:Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->setDisplay(Lcom/netflix/mediaclient/service/logging/apm/model/Display;)V

    .line 67
    return-object v1
.end method

.method public getActiveABTests()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mActiveABTests:Ljava/util/Map;

    return-object v0
.end method

.method public getDestination()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDestination:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "uiStartup"

    return-object v0
.end method

.method public getSearchTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mSearchTerm:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrackId:I

    return v0
.end method

.method public getTrigger()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    return-object v0
.end method

.method public setActiveABTests(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mActiveABTests:Ljava/util/Map;

    .line 160
    return-void
.end method

.method public setDestination(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDestination:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 106
    return-void
.end method

.method public setSearchTerm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mSearchTerm:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setTrackId(I)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrackId:I

    .line 124
    return-void
.end method

.method public setTrigger(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    .line 88
    return-void
.end method
