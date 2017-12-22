.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IClientLogging;
.super Ljava/lang/Object;
.source "IClientLogging.java"


# static fields
.field public static final APM_LOGGING_REQUEST_DELIVERY_STATUS:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.APM_LOGGING_REQUEST_DELIVERY_STATUS"

.field public static final CATEGORY_NFLOGGING:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.LOGGING"

.field public static final EXTRA_DELIVERED:Ljava/lang/String; = "delivered"

.field public static final EXTRA_FLUSH:Ljava/lang/String; = "flush"

.field public static final PAUSE_EVENTS_DELIVERY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_PAUSE_EVENTS_DELIVERY"

.field public static final PRESENTATION_TRACKING_LOGGING_REQUEST_DELIVERY_STATUS:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PRESENTATION_TRACKING_LOGGING_REQUEST_DELIVERY_STATUS"

.field public static final RESUME_ALL_EVENTS_DELIVERY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_RESUME_ALL_EVENTS_DELIVERY"

.field public static final RESUME_EVENTS_DELIVERY:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_RESUME_EVENTS_DELIVERY"


# virtual methods
.method public abstract flushLoggingEvents()V
.end method

.method public abstract getActiveLoggingSessions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/SessionKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdvertiserIdLogging()Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;
.end method

.method public abstract getApplicationId()Ljava/lang/String;
.end method

.method public abstract getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;
.end method

.method public abstract getBreadcrumbLogging()Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;
.end method

.method public abstract getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;
.end method

.method public abstract getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;
.end method

.method public abstract getNextSequence()J
.end method

.method public abstract getPdsEventHandler()Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsEventReporter;
.end method

.method public abstract getPdsLogging()Lcom/netflix/mediaclient/service/logging/IPdsLogging;
.end method

.method public abstract getPresentationTracking()Lcom/netflix/mediaclient/servicemgr/PresentationTracking;
.end method

.method public abstract getUserSessionId()Ljava/lang/String;
.end method

.method public abstract onPlayEnd()V
.end method

.method public abstract onProfileSwitch()V
.end method

.method public abstract onUserLogout()V
.end method

.method public abstract pauseDelivery()V
.end method

.method public abstract resumeDelivery(Z)V
.end method

.method public abstract setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
.end method
