.class public Lcom/android/vending/billing/InAppBillingForNovel;
.super Ljava/lang/Object;
.source "InAppBillingForNovel.java"


# static fields
.field static final TAG:Ljava/lang/String; = "iapp"


# instance fields
.field IAP_subscription:Ljava/lang/String;

.field base64EncodedPublicKey:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mGotInventoryListener:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

.field public mHelper:Lcom/android/vending/billing/util/IabHelper;

.field public mIsYearSubscription:Z

.field mPurchaseFinishedListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

.field mQueryFinishedListener:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkOpAaja9nKG95GKvPA55/LkosuIGm6iQJP3879Qan50WWxZJLXjThsYSxYwAF4QCEmFYPTWcu78E3h178AwW/vC7vaFjKmG38BnSVuVg0zKck3LYyyLTTmcvXmLgkcZEUs1EVUXj1ykAf2c0QrJ6ngS4J0Sli45uk9XtBBi5hSNwbSt6JgtG4HXPwghPxF1ZPmJPBn6X2yXlJFSnVRIsJQx49c7GAmMyogLniMywpyTMHg+T7zTEUZl9MIGoW3P3nB73Dr9InrO7xs3UdsqOHbiM/GC3oGzsi3ZLAbsPfWVtVdX/nPMC4uTK2U/MePLv00/SdVZ9jJPNvP1fT+STmQIDAQAB"

    iput-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel;->base64EncodedPublicKey:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/billing/InAppBillingForNovel;->mIsYearSubscription:Z

    .line 27
    const-string v0, "year_subscription_1"

    iput-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel;->IAP_subscription:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/android/vending/billing/InAppBillingForNovel$2;

    invoke-direct {v0, p0}, Lcom/android/vending/billing/InAppBillingForNovel$2;-><init>(Lcom/android/vending/billing/InAppBillingForNovel;)V

    iput-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel;->mQueryFinishedListener:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    .line 91
    new-instance v0, Lcom/android/vending/billing/InAppBillingForNovel$3;

    invoke-direct {v0, p0}, Lcom/android/vending/billing/InAppBillingForNovel$3;-><init>(Lcom/android/vending/billing/InAppBillingForNovel;)V

    iput-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel;->mGotInventoryListener:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    .line 123
    new-instance v0, Lcom/android/vending/billing/InAppBillingForNovel$4;

    invoke-direct {v0, p0}, Lcom/android/vending/billing/InAppBillingForNovel$4;-><init>(Lcom/android/vending/billing/InAppBillingForNovel;)V

    iput-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel;->mPurchaseFinishedListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 30
    iput-object p1, p0, Lcom/android/vending/billing/InAppBillingForNovel;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/android/vending/billing/util/IabHelper;

    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel;->base64EncodedPublicKey:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/android/vending/billing/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    .line 32
    iget-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/util/IabHelper;->enableDebugLogging(Z)V

    .line 34
    iget-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    new-instance v1, Lcom/android/vending/billing/InAppBillingForNovel$1;

    invoke-direct {v1, p0}, Lcom/android/vending/billing/InAppBillingForNovel$1;-><init>(Lcom/android/vending/billing/InAppBillingForNovel;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/util/IabHelper;->startSetup(Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 52
    return-void
.end method


# virtual methods
.method alert(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "bld":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 62
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    const-string v1, "iapp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing alert dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 65
    return-void
.end method

.method complain(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "iapp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** TrivialDrive Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5931\u6557: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/InAppBillingForNovel;->alert(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public launchSubscriptionFlow()V
    .locals 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/vending/billing/InAppBillingForNovel;->IAP_subscription:Ljava/lang/String;

    const/16 v3, 0x3e9

    iget-object v4, p0, Lcom/android/vending/billing/InAppBillingForNovel;->mPurchaseFinishedListener:Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/billing/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public queryProducts()V
    .locals 4

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "additionalSkuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel;->IAP_subscription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vending/billing/InAppBillingForNovel;->mQueryFinishedListener:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/vending/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 76
    return-void
.end method
