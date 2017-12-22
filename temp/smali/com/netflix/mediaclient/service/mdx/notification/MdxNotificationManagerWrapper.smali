.class public final Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;
.super Ljava/lang/Object;
.source "MdxNotificationManagerWrapper.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;


# instance fields
.field private mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

.field private mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    .line 32
    return-void
.end method


# virtual methods
.method public cancelNotification()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->cancelNotification()V

    .line 110
    :cond_0
    return-void
.end method

.method public getNotification(Z)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->getNotification(Z)Landroid/util/Pair;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isInPostPlay()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->isInPostPlay()Z

    move-result v0

    return v0
.end method

.method public setBoxart(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setBoxart(Landroid/graphics/Bitmap;)V

    .line 82
    :cond_0
    return-void
.end method

.method public setBoxartNotify(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setBoxartNotify(Landroid/graphics/Bitmap;)V

    .line 89
    :cond_0
    return-void
.end method

.method public setPlayerStateNotify(ZZ)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setPlayerStateNotify(ZZ)V

    .line 96
    :cond_0
    return-void
.end method

.method public setTitlesNotify(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setTitlesNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public setUpNextStateNotify(ZZZ)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setUpNextStateNotify(ZZZ)V

    .line 103
    :cond_0
    return-void
.end method

.method public startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V

    .line 44
    :cond_0
    return-void
.end method

.method public stopNotification(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->stopNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 51
    :cond_0
    return-void
.end method

.method public stopPostplayNotification(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mMdxConfiguration:Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;->isRemoteControlNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;->mRealmanager:Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->stopPostplayNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 58
    :cond_0
    return-void
.end method
