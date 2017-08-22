.class Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$1;
.super Ljava/lang/Object;
.source "MoPubNativeAdAdapter.java"

# interfaces
.implements Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->prepare(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$1;->this$1:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$1;->this$1:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    invoke-static {v0}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->access$000(Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;)V

    .line 179
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$1;->this$1:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->isImpressionTracked:Z

    .line 180
    return-void
.end method
