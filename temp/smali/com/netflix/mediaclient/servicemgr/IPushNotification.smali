.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IPushNotification;
.super Ljava/lang/Object;
.source "IPushNotification.java"


# static fields
.field public static final CATEGORY_NFPUSH:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.PUSH"

.field public static final EXTRA_CP_UID:Ljava/lang/String; = "cp_uid"

.field public static final EXTRA_DEVICECATEGORY:Ljava/lang/String; = "device_cat"

.field public static final EXTRA_ESN:Ljava/lang/String; = "esn"

.field public static final EXTRA_MSG:Ljava/lang/String; = "msg"

.field public static final EXTRA_NETFLIXID:Ljava/lang/String; = "nid"

.field public static final EXTRA_REGISTRATIONID:Ljava/lang/String; = "reg_id"

.field public static final EXTRA_SECURENETFLIXID:Ljava/lang/String; = "sid"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final GCM_ON_MESSAGE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_GCM_ONMESSAGE"

.field public static final GCM_ON_REGISTERED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_GCM_ONREGISTERED"

.field public static final GCM_ON_UNREGISTERED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_GCM_ONUNREGISTERED"

.field public static final NOTIFICATION_BROWSER_REDIRECT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFICATION_BROWSER_REDIRECT"

.field public static final NOTIFICATION_CANCELED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFICATION_CANCELED"

.field public static final NOTIFICATION_MARK_AS_READ:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFICATION_MARK_AS_READ"

.field public static final ONLOGIN:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

.field public static final ONLOGOUT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

.field public static final PUSH_OPTIN:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTIN"

.field public static final PUSH_OPTOUT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTOUT"


# virtual methods
.method public abstract informServiceStartedOnGcmInfo()V
.end method

.method public abstract isOptIn()Z
.end method

.method public abstract isSupported()Z
.end method

.method public abstract onApplicationStarted()V
.end method

.method public abstract wasNotificationOptInDisplayed()Z
.end method
