.class Lcom/android/vending/billing/InAppBillingForNovel$1;
.super Ljava/lang/Object;
.source "InAppBillingForNovel.java"

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/InAppBillingForNovel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/InAppBillingForNovel;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/InAppBillingForNovel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/vending/billing/InAppBillingForNovel;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/vending/billing/InAppBillingForNovel$1;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/android/vending/billing/util/IabResult;)V
    .locals 2
    .param p1, "result"    # Lcom/android/vending/billing/util/IabResult;

    .prologue
    .line 36
    const-string v0, "iapp"

    const-string v1, "Setup finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel$1;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v0, v0, Lcom/android/vending/billing/InAppBillingForNovel;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "iapp"

    const-string v1, "Setup successful. Querying inventory."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/vending/billing/InAppBillingForNovel$1;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v0, v0, Lcom/android/vending/billing/InAppBillingForNovel;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    iget-object v1, p0, Lcom/android/vending/billing/InAppBillingForNovel$1;->this$0:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v1, v1, Lcom/android/vending/billing/InAppBillingForNovel;->mGotInventoryListener:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/util/IabHelper;->queryInventoryAsync(Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method
