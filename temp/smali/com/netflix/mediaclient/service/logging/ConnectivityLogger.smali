.class Lcom/netflix/mediaclient/service/logging/ConnectivityLogger;
.super Ljava/lang/Object;
.source "ConnectivityLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectivityLogger"

.field private static final connectionClassManagerListener:Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;

.field private static final networkDispatcherListener:Lcom/android/volley/NetworkDispatcher$NetworkDispatcherListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ConnectivityLogger$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/ConnectivityLogger$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/ConnectivityLogger;->connectionClassManagerListener:Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/service/logging/ConnectivityLogger$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/ConnectivityLogger$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/ConnectivityLogger;->networkDispatcherListener:Lcom/android/volley/NetworkDispatcher$NetworkDispatcherListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getConnectionClassManagerListener()Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/netflix/mediaclient/service/logging/ConnectivityLogger;->connectionClassManagerListener:Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;

    return-object v0
.end method

.method static getNetworkDispatcherListener()Lcom/android/volley/NetworkDispatcher$NetworkDispatcherListener;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/netflix/mediaclient/service/logging/ConnectivityLogger;->networkDispatcherListener:Lcom/android/volley/NetworkDispatcher$NetworkDispatcherListener;

    return-object v0
.end method
