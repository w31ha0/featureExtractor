.class Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$1;
.super Ljava/lang/Object;
.source "MoPubNativeAdAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->onNativeReady(Lcom/mobfox/sdk/nativeads/Native;Lcom/mobfox/sdk/customevents/CustomEventNative;Lcom/mobfox/sdk/nativeads/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;

.field final synthetic val$aNative:Lcom/mobfox/sdk/nativeads/Native;

.field final synthetic val$ad:Lcom/mobfox/sdk/nativeads/NativeAd;

.field final synthetic val$event:Lcom/mobfox/sdk/customevents/CustomEventNative;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;Lcom/mobfox/sdk/nativeads/Native;Lcom/mobfox/sdk/customevents/CustomEventNative;Lcom/mobfox/sdk/nativeads/NativeAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;

    iput-object p2, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$1;->val$aNative:Lcom/mobfox/sdk/nativeads/Native;

    iput-object p3, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$1;->val$event:Lcom/mobfox/sdk/customevents/CustomEventNative;

    iput-object p4, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$1;->val$ad:Lcom/mobfox/sdk/nativeads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;

    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$1;->val$aNative:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$1;->val$event:Lcom/mobfox/sdk/customevents/CustomEventNative;

    iget-object v3, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$1;->val$ad:Lcom/mobfox/sdk/nativeads/NativeAd;

    iget-object v4, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;

    iget-object v4, v4, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->createMobFoxMoPubAd(Lcom/mobfox/sdk/nativeads/Native;Lcom/mobfox/sdk/customevents/CustomEventNative;Lcom/mobfox/sdk/nativeads/NativeAd;Landroid/content/Context;)Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    .line 125
    return-void
.end method
