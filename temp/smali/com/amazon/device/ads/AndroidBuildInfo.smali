.class Lcom/amazon/device/ads/AndroidBuildInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private make:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private sdkInt:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/AndroidBuildInfo;->make:Ljava/lang/String;

    .line 17
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/AndroidBuildInfo;->model:Ljava/lang/String;

    .line 18
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/AndroidBuildInfo;->osVersion:Ljava/lang/String;

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/amazon/device/ads/AndroidBuildInfo;->sdkInt:I

    return-void
.end method


# virtual methods
.method public getMake()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amazon/device/ads/AndroidBuildInfo;->make:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/device/ads/AndroidBuildInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/device/ads/AndroidBuildInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKInt()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/amazon/device/ads/AndroidBuildInfo;->sdkInt:I

    return v0
.end method
