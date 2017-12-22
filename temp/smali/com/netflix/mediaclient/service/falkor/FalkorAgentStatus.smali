.class public Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;
.super Lcom/netflix/mediaclient/android/app/NetflixStatus;
.source "FalkorAgentStatus.java"


# instance fields
.field private final wasAllDataLocalToCache:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;Z)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 12
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->wasAllDataLocalToCache:Z

    .line 13
    return-void
.end method


# virtual methods
.method public wasAllDataLocalToCache()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->wasAllDataLocalToCache:Z

    return v0
.end method
