.class Lcom/skipping/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/skipping/inappbilling/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/skipping/MainActivity$4;->this$0:Lcom/skipping/MainActivity;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/skipping/inappbilling/util/IabResult;)V
    .locals 3
    .param p1, "result"    # Lcom/skipping/inappbilling/util/IabResult;

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/skipping/inappbilling/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const-string v0, "com.skipping.inappbilling"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app Billing setup failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v0, "com.skipping.inappbilling"

    const-string v1, "In-app Billing is set up OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
