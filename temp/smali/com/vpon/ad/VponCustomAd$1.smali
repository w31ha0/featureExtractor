.class Lcom/vpon/ad/VponCustomAd$1;
.super Ljava/lang/Object;
.source "VponCustomAd.java"

# interfaces
.implements Lcom/vpadn/ads/VpadnAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/ad/VponCustomAd;->requestBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpon/ad/VponCustomAd;

.field final synthetic val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/vpon/ad/VponCustomAd;Lcom/google/ads/mediation/customevent/CustomEventBannerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vpon/ad/VponCustomAd;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/vpon/ad/VponCustomAd$1;->this$0:Lcom/vpon/ad/VponCustomAd;

    iput-object p2, p0, Lcom/vpon/ad/VponCustomAd$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVpadnDismissScreen(Lcom/vpadn/ads/VpadnAd;)V
    .locals 1
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onDismissScreen()V

    .line 142
    return-void
.end method

.method public onVpadnFailedToReceiveAd(Lcom/vpadn/ads/VpadnAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V
    .locals 1
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;
    .param p2, "arg1"    # Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    .line 147
    return-void
.end method

.method public onVpadnLeaveApplication(Lcom/vpadn/ads/VpadnAd;)V
    .locals 1
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onLeaveApplication()V

    .line 152
    return-void
.end method

.method public onVpadnPresentScreen(Lcom/vpadn/ads/VpadnAd;)V
    .locals 1
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onPresentScreen()V

    .line 157
    return-void
.end method

.method public onVpadnReceiveAd(Lcom/vpadn/ads/VpadnAd;)V
    .locals 2
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    iget-object v1, p0, Lcom/vpon/ad/VponCustomAd$1;->this$0:Lcom/vpon/ad/VponCustomAd;

    invoke-static {v1}, Lcom/vpon/ad/VponCustomAd;->access$000(Lcom/vpon/ad/VponCustomAd;)Lcom/vpadn/ads/VpadnBanner;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onReceivedAd(Landroid/view/View;)V

    .line 162
    return-void
.end method
