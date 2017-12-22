.class public interface abstract Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;
.super Ljava/lang/Object;
.source "NetflixJobScheduler.java"


# virtual methods
.method public abstract cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
.end method

.method public abstract isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z
.end method

.method public abstract onJobFinished(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V
.end method

.method public abstract scheduleJob(Lcom/netflix/mediaclient/service/job/NetflixJob;)V
.end method
