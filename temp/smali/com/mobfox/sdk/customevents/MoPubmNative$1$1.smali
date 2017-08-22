.class Lcom/mobfox/sdk/customevents/MoPubmNative$1$1;
.super Ljava/lang/Object;
.source "MoPubmNative.java"

# interfaces
.implements Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/customevents/MoPubmNative$1;->onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/customevents/MoPubmNative$1;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/customevents/MoPubmNative$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/customevents/MoPubmNative$1;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1$1;->this$1:Lcom/mobfox/sdk/customevents/MoPubmNative$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1$1;->this$1:Lcom/mobfox/sdk/customevents/MoPubmNative$1;

    iget-object v0, v0, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    iget-object v1, p0, Lcom/mobfox/sdk/customevents/MoPubmNative$1$1;->this$1:Lcom/mobfox/sdk/customevents/MoPubmNative$1;

    iget-object v1, v1, Lcom/mobfox/sdk/customevents/MoPubmNative$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubmNative;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventNativeListener;->onNativeClicked(Lcom/mobfox/sdk/customevents/CustomEventNative;)V

    .line 69
    return-void
.end method

.method public onImpression(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    return-void
.end method
