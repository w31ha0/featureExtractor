.class public interface abstract Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;
.super Ljava/lang/Object;


# static fields
.field public static final CLOSE_REASON_DISCONNECTED:I = 0x1

.field public static final CLOSE_REASON_LOCAL_CLOSE:I = 0x3

.field public static final CLOSE_REASON_NORMAL:I = 0x0

.field public static final CLOSE_REASON_REMOTE_CLOSE:I = 0x2


# virtual methods
.method public abstract onChannelClosed(Lcom/google/android/gms/wearable/Channel;II)V
.end method

.method public abstract onChannelOpened(Lcom/google/android/gms/wearable/Channel;)V
.end method

.method public abstract onInputClosed(Lcom/google/android/gms/wearable/Channel;II)V
.end method

.method public abstract onOutputClosed(Lcom/google/android/gms/wearable/Channel;II)V
.end method
