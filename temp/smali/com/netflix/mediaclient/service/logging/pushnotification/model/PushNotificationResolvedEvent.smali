.class public final Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "PushNotificationResolvedEvent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/netflix/mediaclient/servicemgr/PushNotificationLogging$PushNotificationDiscreteEvent;


# static fields
.field protected static final ACTION:Ljava/lang/String; = "action"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected static final NAME:Ljava/lang/String; = "pushNotificationResolved"

.field protected static final TIME:Ljava/lang/String; = "resolvedTime"


# instance fields
.field private mFeedback:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

.field private mResolvedTime:J

.field private mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mFeedback:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    .line 88
    const-class v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mResolvedTime:J

    .line 90
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;->values()[Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mResolvedTime:J

    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    .line 44
    const-string/jumbo v0, "pushNotification"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->category:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mFeedback:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    .line 46
    const-string/jumbo v0, "pushNotificationResolved"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->name:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method protected getData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 52
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    :cond_0
    const-string/jumbo v1, "action"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mFeedback:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v1, "resolvedTime"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mResolvedTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v1, "trackingInfo"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PushNotificationResolvedEvent{mFeedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mFeedback:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTrackingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mResolvedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mResolvedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mFeedback:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mResolvedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;->mFeedback:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;->ordinal()I

    move-result v0

    goto :goto_0
.end method
