.class Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$DeviceBandwidthSamplerHolder;
.super Ljava/lang/Object;
.source "DeviceBandwidthSampler.java"


# static fields
.field public static final instance:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    .line 48
    invoke-static {}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getInstance()Lcom/facebook/network/connectionclass/ConnectionClassManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;-><init>(Lcom/facebook/network/connectionclass/ConnectionClassManager;Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$1;)V

    sput-object v0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$DeviceBandwidthSamplerHolder;->instance:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    .line 47
    return-void
.end method
