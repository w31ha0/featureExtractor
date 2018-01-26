.class public Lcom/paypal/android/MEP/MEPAmounts;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/math/BigDecimal;

.field private c:Ljava/math/BigDecimal;

.field private d:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/MEPAmounts;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentAmount()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/MEPAmounts;->b:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getShipping()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/MEPAmounts;->d:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getTax()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/MEPAmounts;->c:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/MEPAmounts;->a:Ljava/lang/String;

    return-void
.end method

.method public setPaymentAmount(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/MEPAmounts;->b:Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/MEPAmounts;->b:Ljava/math/BigDecimal;

    goto :goto_0
.end method

.method public setPaymentAmount(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/MEPAmounts;->b:Ljava/math/BigDecimal;

    return-void
.end method

.method public setShipping(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/MEPAmounts;->d:Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/MEPAmounts;->d:Ljava/math/BigDecimal;

    goto :goto_0
.end method

.method public setShipping(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/MEPAmounts;->d:Ljava/math/BigDecimal;

    return-void
.end method

.method public setTax(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/MEPAmounts;->c:Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/MEPAmounts;->c:Ljava/math/BigDecimal;

    goto :goto_0
.end method

.method public setTax(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/MEPAmounts;->c:Ljava/math/BigDecimal;

    return-void
.end method
