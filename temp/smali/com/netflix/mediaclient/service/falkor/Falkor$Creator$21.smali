.class final Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$21;
.super Ljava/lang/Object;
.source "Falkor.java"

# interfaces
.implements Lcom/netflix/falkor/Func;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/falkor/Func",
        "<",
        "Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;-><init>()V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$21;->call()Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    move-result-object v0

    return-object v0
.end method
