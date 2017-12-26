.class Lcom/skipping/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/skipping/inappbilling/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skipping/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/MainActivity;


# direct methods
.method constructor <init>(Lcom/skipping/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/MainActivity$1;->this$0:Lcom/skipping/MainActivity;

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/skipping/inappbilling/util/IabResult;Lcom/skipping/inappbilling/util/Purchase;)V
    .locals 2
    .param p1, "result"    # Lcom/skipping/inappbilling/util/IabResult;
    .param p2, "purchase"    # Lcom/skipping/inappbilling/util/Purchase;

    .prologue
    .line 925
    invoke-virtual {p1}, Lcom/skipping/inappbilling/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    invoke-virtual {p2}, Lcom/skipping/inappbilling/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.skipping.disable.ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/skipping/MainActivity$1;->this$0:Lcom/skipping/MainActivity;

    invoke-virtual {v0}, Lcom/skipping/MainActivity;->consumeItem()V

    goto :goto_0
.end method
