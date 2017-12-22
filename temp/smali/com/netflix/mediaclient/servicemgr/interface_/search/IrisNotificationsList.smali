.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;
.super Ljava/lang/Object;
.source "IrisNotificationsList.java"


# virtual methods
.method public abstract getParcelable()Landroid/os/Parcelable;
.end method

.method public abstract getSocialNotifications()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSocialNotificationsListSummary()Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;
.end method
