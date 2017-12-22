.class public final Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;
.super Lcom/netflix/mediaclient/service/logging/customerSupport/BaseCustomerSupportSession;
.source "CustomerSupportCallSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "customerSupportCall"

.field private static final TAG:Ljava/lang/String; = "customerSupportCall"


# instance fields
.field private mCallConnectedTimeInMs:J

.field private mCallStartedTimeInMs:J

.field private mCurrentCallQuality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

.field private mCurrentCallQualitySegmentStartTimeInMs:J

.field private mDialConfirmationDialogDisplayed:Z

.field private mSdk:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;

.field private mSharedSessionId:Ljava/lang/String;

.field private mStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;Z)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/customerSupport/BaseCustomerSupportSession;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mStates:Ljava/util/List;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCallStartedTimeInMs:J

    .line 47
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mSharedSessionId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mSdk:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;

    .line 49
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mDialConfirmationDialogDisplayed:Z

    .line 50
    return-void
.end method

.method private addCurrentQualitySegment()V
    .locals 6

    .prologue
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 90
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQualitySegmentStartTimeInMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQuality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    if-nez v2, :cond_1

    .line 91
    :cond_0
    const-string/jumbo v2, "customerSupportCall"

    const-string/jumbo v3, "Call connected did not called yet!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQualitySegmentStartTimeInMs:J

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQualitySegmentStartTimeInMs:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 96
    new-instance v3, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQuality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    invoke-direct {v3, v2, v4}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;-><init>(ILcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V

    .line 97
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mStates:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQualitySegmentStartTimeInMs:J

    goto :goto_0
.end method


# virtual methods
.method public callConnected(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCallConnectedTimeInMs:J

    .line 65
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQualitySegmentStartTimeInMs:J

    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQuality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    .line 67
    return-void
.end method

.method public createCustomerSupportCallSessionEndedEvent(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->addCurrentQualitySegment()V

    .line 121
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCallConnectedTimeInMs:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCallStartedTimeInMs:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v10

    long-to-int v3, v2

    .line 122
    if-gez v3, :cond_2

    .line 125
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByUserAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    if-ne p1, v1, :cond_1

    .line 126
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByUserBeforeConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    move v3, v0

    move-object v5, p1

    .line 129
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->now()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCallConnectedTimeInMs:J

    sub-long/2addr v6, v8

    div-long/2addr v6, v10

    long-to-int v4, v6

    .line 130
    if-gez v4, :cond_0

    move v4, v0

    .line 133
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mSdk:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;

    move-object v1, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;IILcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    return-object v0

    :cond_1
    move v3, v0

    move-object v5, p1

    goto :goto_0

    :cond_2
    move-object v5, p1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string/jumbo v0, "customerSupportCall"

    return-object v0
.end method

.method public getQualityStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mStates:Ljava/util/List;

    return-object v0
.end method

.method public getSharedSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mSharedSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public isDialConfirmationDialogDisplayed()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mDialConfirmationDialogDisplayed:Z

    return v0
.end method

.method public setCallQuality(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQuality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    if-ne v0, p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->addCurrentQualitySegment()V

    .line 84
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQuality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    goto :goto_0
.end method
