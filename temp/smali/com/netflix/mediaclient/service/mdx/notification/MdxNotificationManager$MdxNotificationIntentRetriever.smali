.class public interface abstract Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;
.super Ljava/lang/Object;
.source "MdxNotificationManager.java"


# virtual methods
.method public abstract getNoActionIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getPauseIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getPlayNextIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getResumeIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getSkipbackIntent(I)Landroid/app/PendingIntent;
.end method

.method public abstract getStopIntent()Landroid/app/PendingIntent;
.end method
