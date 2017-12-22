.class Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;
.super Landroid/os/Handler;
.source "DeviceBandwidthSampler.java"


# instance fields
.field final synthetic this$0:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;


# direct methods
.method public constructor <init>(Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->this$0:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    .line 138
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->this$0:Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    invoke-virtual {v0}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->addSample()V

    .line 146
    const/4 v0, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 151
    return-void

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startSamplingThread()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->sendEmptyMessage(I)Z

    .line 156
    return-void
.end method

.method public stopSamplingThread()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler$SamplingHandler;->removeMessages(I)V

    .line 160
    return-void
.end method
