.class public Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "PushNotificationReceivedEvent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/netflix/mediaclient/servicemgr/PushNotificationLogging$PushNotificationDiscreteEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected static final NAME:Ljava/lang/String; = "pushNotificationReceived"

.field protected static final RECEIVED_TIME:Ljava/lang/String; = "receivedTime"


# instance fields
.field private mReceivedTime:J

.field private mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 74
    const-class v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;->mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;->mReceivedTime:J

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;->mReceivedTime:J

    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;->mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    .line 37
    const-string/jumbo v0, "pushNotification"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;->category:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "pushNotificationReceived"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;->name:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected getData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 44
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    :cond_0
    const-string/jumbo v1, "receivedTime"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;->mReceivedTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50
    const-string/jumbo v1, "trackingInfo"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;->mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PushNotificationReceivedEvent{trackingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;->mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", receivedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;->mReceivedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;->mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 70
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;->mReceivedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    return-void
.end method
