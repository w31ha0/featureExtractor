.class Lcom/skipping/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/skipping/inappbilling/util/IabHelper$QueryInventoryFinishedListener;


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
    iput-object p1, p0, Lcom/skipping/MainActivity$2;->this$0:Lcom/skipping/MainActivity;

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/skipping/inappbilling/util/IabResult;Lcom/skipping/inappbilling/util/Inventory;)V
    .locals 3
    .param p1, "result"    # Lcom/skipping/inappbilling/util/IabResult;
    .param p2, "inventory"    # Lcom/skipping/inappbilling/util/Inventory;

    .prologue
    .line 945
    invoke-virtual {p1}, Lcom/skipping/inappbilling/util/IabResult;->isFailure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/skipping/MainActivity$2;->this$0:Lcom/skipping/MainActivity;

    iget-object v0, v0, Lcom/skipping/MainActivity;->mHelper:Lcom/skipping/inappbilling/util/IabHelper;

    const-string v1, "com.skipping.disable.ads"

    invoke-virtual {p2, v1}, Lcom/skipping/inappbilling/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/skipping/inappbilling/util/Purchase;

    move-result-object v1

    iget-object v2, p0, Lcom/skipping/MainActivity$2;->this$0:Lcom/skipping/MainActivity;

    iget-object v2, v2, Lcom/skipping/MainActivity;->mConsumeFinishedListener:Lcom/skipping/inappbilling/util/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v0, v1, v2}, Lcom/skipping/inappbilling/util/IabHelper;->consumeAsync(Lcom/skipping/inappbilling/util/Purchase;Lcom/skipping/inappbilling/util/IabHelper$OnConsumeFinishedListener;)V

    .line 950
    :cond_0
    return-void
.end method
