.class final Lcom/paypal/android/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paypal/android/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPal;->setLibraryInitialized(Z)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/paypal/android/MEP/PayPal;->onInitializeCompletedOK(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPal;->setLibraryInitialized(Z)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/paypal/android/MEP/PayPal;->onInitializeCompletedError(ILjava/lang/Object;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
