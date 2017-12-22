.class public final Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "PushNotificationPresentedEvent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/netflix/mediaclient/servicemgr/PushNotificationLogging$PushNotificationDiscreteEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected static final NAME:Ljava/lang/String; = "pushNotificationPresented"

.field protected static final PRESENTED_TIME:Ljava/lang/String; = "presentedTime"


# instance fields
.field private mPresentedTime:J

.field private mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    .line 66
    const-class v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent;->mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent;->mPresentedTime:J

    .line 68
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

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent;->mPresentedTime:J

    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent;->mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    .line 37
    const-string/jumbo v0, "pushNotification"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent;->category:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "pushNotificationPresented"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent;->name:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
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
    const-string/jumbo v1, "presentedTime"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent;->mPresentedTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50
    const-string/jumbo v1, "trackingInfo"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent;->mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent;->mTrackingInfo:Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent;->mPresentedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    return-void
.end method
