.class Lcom/vpon/ad/VponCustomAd$2;
.super Ljava/lang/Object;
.source "VponCustomAd.java"

# interfaces
.implements Lcom/vpadn/ads/VpadnAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/ad/VponCustomAd;->requestInterstitialAd(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpon/ad/VponCustomAd;

.field final synthetic val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method constructor <init>(Lcom/vpon/ad/VponCustomAd;Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vpon/ad/VponCustomAd;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/vpon/ad/VponCustomAd$2;->this$0:Lcom/vpon/ad/VponCustomAd;

    iput-object p2, p0, Lcom/vpon/ad/VponCustomAd$2;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVpadnDismissScreen(Lcom/vpadn/ads/VpadnAd;)V
    .locals 2
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$2;->this$0:Lcom/vpon/ad/VponCustomAd;

    invoke-static {v0}, Lcom/vpon/ad/VponCustomAd;->access$100(Lcom/vpon/ad/VponCustomAd;)Lcom/vpadn/ads/VpadnInterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$2;->this$0:Lcom/vpon/ad/VponCustomAd;

    invoke-static {v0}, Lcom/vpon/ad/VponCustomAd;->access$100(Lcom/vpon/ad/VponCustomAd;)Lcom/vpadn/ads/VpadnInterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnInterstitialAd;->destroy()V

    .line 182
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$2;->this$0:Lcom/vpon/ad/VponCustomAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vpon/ad/VponCustomAd;->access$102(Lcom/vpon/ad/VponCustomAd;Lcom/vpadn/ads/VpadnInterstitialAd;)Lcom/vpadn/ads/VpadnInterstitialAd;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$2;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onDismissScreen()V

    .line 185
    return-void
.end method

.method public onVpadnFailedToReceiveAd(Lcom/vpadn/ads/VpadnAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V
    .locals 2
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;
    .param p2, "arg1"    # Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$2;->this$0:Lcom/vpon/ad/VponCustomAd;

    invoke-static {v0}, Lcom/vpon/ad/VponCustomAd;->access$100(Lcom/vpon/ad/VponCustomAd;)Lcom/vpadn/ads/VpadnInterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$2;->this$0:Lcom/vpon/ad/VponCustomAd;

    invoke-static {v0}, Lcom/vpon/ad/VponCustomAd;->access$100(Lcom/vpon/ad/VponCustomAd;)Lcom/vpadn/ads/VpadnInterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnInterstitialAd;->destroy()V

    .line 191
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$2;->this$0:Lcom/vpon/ad/VponCustomAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vpon/ad/VponCustomAd;->access$102(Lcom/vpon/ad/VponCustomAd;Lcom/vpadn/ads/VpadnInterstitialAd;)Lcom/vpadn/ads/VpadnInterstitialAd;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$2;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onFailedToReceiveAd()V

    .line 194
    return-void
.end method

.method public onVpadnLeaveApplication(Lcom/vpadn/ads/VpadnAd;)V
    .locals 1
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$2;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onLeaveApplication()V

    .line 199
    return-void
.end method

.method public onVpadnPresentScreen(Lcom/vpadn/ads/VpadnAd;)V
    .locals 1
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$2;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onPresentScreen()V

    .line 204
    return-void
.end method

.method public onVpadnReceiveAd(Lcom/vpadn/ads/VpadnAd;)V
    .locals 1
    .param p1, "arg0"    # Lcom/vpadn/ads/VpadnAd;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/vpon/ad/VponCustomAd$2;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 209
    return-void
.end method
