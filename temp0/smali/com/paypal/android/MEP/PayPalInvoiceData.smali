.class public Lcom/paypal/android/MEP/PayPalInvoiceData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/paypal/android/MEP/PayPalInvoiceItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/math/BigDecimal;

.field private c:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceData;->a:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalInvoiceData;->b:Ljava/math/BigDecimal;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalInvoiceData;->c:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceData;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalInvoiceData;->b:Ljava/math/BigDecimal;

    iput-object p2, p0, Lcom/paypal/android/MEP/PayPalInvoiceData;->c:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public add(Lcom/paypal/android/MEP/PayPalInvoiceItem;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceData;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getInvoiceItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/paypal/android/MEP/PayPalInvoiceItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceData;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShipping()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceData;->c:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getTax()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceData;->b:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public setInvoiceItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/paypal/android/MEP/PayPalInvoiceItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalInvoiceData;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public setShipping(Ljava/math/BigDecimal;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceData;->c:Ljava/math/BigDecimal;

    return-void
.end method

.method public setTax(Ljava/math/BigDecimal;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalInvoiceData;->b:Ljava/math/BigDecimal;

    return-void
.end method
