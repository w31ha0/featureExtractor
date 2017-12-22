.class public Lcom/amazon/drm/AmazonLicenseVerificationCallback;
.super Ljava/lang/Object;
.source "AmazonLicenseVerificationCallback.java"


# static fields
.field private static called:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazon/drm/AmazonLicenseVerificationCallback;->called:Z

    return-void
.end method

.method public static declared-synchronized isCalled()Z
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/amazon/drm/AmazonLicenseVerificationCallback;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/amazon/drm/AmazonLicenseVerificationCallback;->called:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
