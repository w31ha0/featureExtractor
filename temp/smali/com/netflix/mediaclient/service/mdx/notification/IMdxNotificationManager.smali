.class public interface abstract Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;
.super Ljava/lang/Object;
.source "IMdxNotificationManager.java"


# virtual methods
.method public abstract cancelNotification()V
.end method

.method public abstract getNotification(Z)Landroid/util/Pair;
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
.end method

.method public abstract isInPostPlay()Z
.end method

.method public abstract setBoxart(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setBoxartNotify(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setPlayerStateNotify(ZZ)V
.end method

.method public abstract setTitlesNotify(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setUpNextStateNotify(ZZZ)V
.end method

.method public abstract startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V
.end method

.method public abstract stopNotification(Lcom/netflix/mediaclient/service/NetflixService;)V
.end method

.method public abstract stopPostplayNotification(Lcom/netflix/mediaclient/service/NetflixService;)V
.end method
