.class Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;
.super Ljava/lang/Object;
.source "AndroidMslClient.java"


# instance fields
.field public future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/netflix/msl/msg/MslControl$MslChannel;",
            ">;"
        }
    .end annotation
.end field

.field public url:Lcom/netflix/mediaclient/service/msl/client/MslUrlHttpURLConnectionImpl;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$1;)V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/client/AndroidMslClient$MslChannelWrapper;-><init>()V

    return-void
.end method
