.class public final Lcom/paypal/android/MEP/PayPal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paypal/android/MEP/PayPal$b;,
        Lcom/paypal/android/MEP/PayPal$a;
    }
.end annotation


# static fields
.field public static final AUTH_SETTING_DISABLED:I = 0x0

.field public static final AUTH_SETTING_ENABLED:I = 0x1

.field public static final BUTTON_152x33:I = 0x0

.field public static final BUTTON_194x37:I = 0x1

.field public static final BUTTON_278x43:I = 0x2

.field public static final BUTTON_294x45:I = 0x3

.field public static final ENV_LIVE:I = 0x1

.field public static final ENV_NONE:I = 0x2

.field public static final ENV_SANDBOX:I = 0x0

.field public static final FEEPAYER_EACHRECEIVER:I = 0x0

.field public static final FEEPAYER_PRIMARYRECEIVER:I = 0x2

.field public static final FEEPAYER_SECONDARYONLY:I = 0x3

.field public static final FEEPAYER_SENDER:I = 0x1

.field public static final LOGIN_VIA_DRT:I = 0x2

.field public static final LOGIN_VIA_EMAIL:I = 0x0

.field public static final LOGIN_VIA_EMAIL_EBAY_USER:I = 0x3

.field public static final LOGIN_VIA_PHONE:I = 0x1

.field public static final NUM_STYLES:I = 0x4

.field public static final PAYMENT_SUBTYPE_AFFILIATE:I = 0x0

.field public static final PAYMENT_SUBTYPE_B2B:I = 0x1

.field public static final PAYMENT_SUBTYPE_CHILDCARE:I = 0xf

.field public static final PAYMENT_SUBTYPE_CONTRACTORS:I = 0x11

.field public static final PAYMENT_SUBTYPE_DONATIONS:I = 0x6

.field public static final PAYMENT_SUBTYPE_ENTERTAINMENT:I = 0x12

.field public static final PAYMENT_SUBTYPE_EVENTS:I = 0x10

.field public static final PAYMENT_SUBTYPE_GOVERNMENT:I = 0x9

.field public static final PAYMENT_SUBTYPE_INSURANCE:I = 0xa

.field public static final PAYMENT_SUBTYPE_INVOICE:I = 0x14

.field public static final PAYMENT_SUBTYPE_MEDICAL:I = 0xe

.field public static final PAYMENT_SUBTYPE_MORTGAGE:I = 0xd

.field public static final PAYMENT_SUBTYPE_NONE:I = 0x16

.field public static final PAYMENT_SUBTYPE_PAYROLL:I = 0x2

.field public static final PAYMENT_SUBTYPE_REBATES:I = 0x3

.field public static final PAYMENT_SUBTYPE_REFUNDS:I = 0x4

.field public static final PAYMENT_SUBTYPE_REIMBURSEMENTS:I = 0x5

.field public static final PAYMENT_SUBTYPE_REIMBUSEMENTS:I = 0x5

.field public static final PAYMENT_SUBTYPE_REMITTANCES:I = 0xb

.field public static final PAYMENT_SUBTYPE_RENT:I = 0xc

.field public static final PAYMENT_SUBTYPE_TOURISM:I = 0x13

.field public static final PAYMENT_SUBTYPE_TRANSFER:I = 0x15

.field public static final PAYMENT_SUBTYPE_TUITION:I = 0x8

.field public static final PAYMENT_SUBTYPE_UTILITIES:I = 0x7

.field public static final PAYMENT_TYPE_GOODS:I = 0x0

.field public static final PAYMENT_TYPE_NONE:I = 0x3

.field public static final PAYMENT_TYPE_PERSONAL:I = 0x2

.field public static final PAYMENT_TYPE_SERVICE:I = 0x1

.field public static final PAY_TYPE_CHAINED:I = 0x2

.field public static final PAY_TYPE_PARALLEL:I = 0x1

.field public static final PAY_TYPE_PREAPPROVAL:I = 0x3

.field public static final PAY_TYPE_SIMPLE:I

.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static f:Lcom/paypal/android/c/a;


# instance fields
.field private c:Lcom/paypal/android/MEP/PayPal$a;

.field private final d:Lcom/paypal/android/MEP/PayPal$b;

.field private e:Ljava/lang/Boolean;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "GOODS"

    aput-object v1, v0, v2

    const-string v1, "SERVICE"

    aput-object v1, v0, v3

    const-string v1, "PERSONAL"

    aput-object v1, v0, v4

    const-string v1, "NONE"

    aput-object v1, v0, v5

    sput-object v0, Lcom/paypal/android/MEP/PayPal;->a:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AFFILIATE_PAYMENTS"

    aput-object v1, v0, v2

    const-string v1, "B2B"

    aput-object v1, v0, v3

    const-string v1, "PAYROLL"

    aput-object v1, v0, v4

    const-string v1, "REBATES"

    aput-object v1, v0, v5

    const-string v1, "REFUNDS"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "REIMBURSEMENTS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DONATIONS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UTILITIES"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "TUITION"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GOVERNMENT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "INSURANCE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "REMITTANCES"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "RENT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MORTGAGE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MEDICAL"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CHILD_CARE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "EVENT_PLANNING"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "GENERAL_CONTRACTORS"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ENTERTAINMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TOURISM"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "INVOICE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TRANSFER"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "NONE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/paypal/android/MEP/PayPal;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/PayPal;->f:Lcom/paypal/android/c/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPal;->e:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/paypal/android/MEP/PayPal;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPal;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPal;->i:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/MEP/PayPal$a;

    invoke-direct {v0, p0}, Lcom/paypal/android/MEP/PayPal$a;-><init>(Lcom/paypal/android/MEP/PayPal;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    new-instance v0, Lcom/paypal/android/MEP/PayPal$b;

    invoke-direct {v0, p0}, Lcom/paypal/android/MEP/PayPal$b;-><init>(Lcom/paypal/android/MEP/PayPal;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPal;->d:Lcom/paypal/android/MEP/PayPal$b;

    invoke-virtual {p0}, Lcom/paypal/android/MEP/PayPal;->resetAccount()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getBuild()Ljava/lang/String;
    .locals 2

    const-string v0, "1.5.5.44"

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/paypal/android/MEP/PayPal;
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    return-object v0
.end method

.method public static getPaySubtype(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/PayPal;->b:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getPayType(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/PayPal;->a:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.5.5.44"

    return-object v0
.end method

.method public static getVersionWithoutBuild()Ljava/lang/String;
    .locals 3

    const-string v0, "1.5.5.44"

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initWithAppID(Landroid/content/Context;Ljava/lang/String;I)Lcom/paypal/android/MEP/PayPal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->deinitialize()V

    :cond_0
    new-instance v0, Lcom/paypal/android/MEP/PayPal;

    invoke-direct {v0}, Lcom/paypal/android/MEP/PayPal;-><init>()V

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iput-object p0, v0, Lcom/paypal/android/MEP/PayPal$a;->d:Landroid/content/Context;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iput-object p1, v0, Lcom/paypal/android/MEP/PayPal$a;->e:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iput p2, v0, Lcom/paypal/android/MEP/PayPal$a;->j:I

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/paypal/android/MEP/PayPal$a;->n:Z

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/paypal/android/MEP/PayPal$a;->m:Z

    invoke-static {}, Lcom/paypal/android/a/b;->c()V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-static {}, Lcom/paypal/android/a/g;->a()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPal;->setLanguage(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/paypal/android/a/h;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final canShowCart()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v3

    if-nez v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getInvoiceItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final checkout(Lcom/paypal/android/MEP/PayPalAdvancedPayment;Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/paypal/android/MEP/PayPal;->checkout(Lcom/paypal/android/MEP/PayPalAdvancedPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PaymentAdjuster;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final checkout(Lcom/paypal/android/MEP/PayPalAdvancedPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/paypal/android/MEP/PayPal;->checkout(Lcom/paypal/android/MEP/PayPalAdvancedPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PaymentAdjuster;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final checkout(Lcom/paypal/android/MEP/PayPalAdvancedPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PaymentAdjuster;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/paypal/android/MEP/PayPal;->checkout(Lcom/paypal/android/MEP/PayPalAdvancedPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PaymentAdjuster;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final checkout(Lcom/paypal/android/MEP/PayPalAdvancedPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PaymentAdjuster;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iput-object p1, v0, Lcom/paypal/android/MEP/PayPal$a;->a:Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/paypal/android/MEP/PayPal$a;->b:Lcom/paypal/android/MEP/PayPalPreapproval;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/MEP/PayPalActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.paypal.android.PAYPAL_PAYMENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string v1, "com.paypal.android.PAYMENT_ADJUSTER"

    check-cast p3, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    if-eqz p4, :cond_1

    const-string v1, "com.paypal.android.RESULT_DELEGATE"

    check-cast p4, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public final checkout(Lcom/paypal/android/MEP/PayPalPayment;Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/paypal/android/MEP/PayPal;->checkout(Lcom/paypal/android/MEP/PayPalPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PaymentAdjuster;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final checkout(Lcom/paypal/android/MEP/PayPalPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/paypal/android/MEP/PayPal;->checkout(Lcom/paypal/android/MEP/PayPalPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PaymentAdjuster;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final checkout(Lcom/paypal/android/MEP/PayPalPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PaymentAdjuster;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/paypal/android/MEP/PayPal;->checkout(Lcom/paypal/android/MEP/PayPalPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PaymentAdjuster;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final checkout(Lcom/paypal/android/MEP/PayPalPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PaymentAdjuster;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    invoke-direct {v0}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/MEP/PayPalPayment;->getCurrencyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->setCurrencyType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/paypal/android/MEP/PayPalPayment;->getIpnUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->setIpnUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/paypal/android/MEP/PayPalPayment;->getMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->setMemo(Ljava/lang/String;)V

    new-instance v1, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-direct {v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/MEP/PayPalPayment;->getRecipient()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setRecipient(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/paypal/android/MEP/PayPalPayment;->getSubtotal()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setSubtotal(Ljava/math/BigDecimal;)V

    invoke-virtual {p1}, Lcom/paypal/android/MEP/PayPalPayment;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setInvoiceData(Lcom/paypal/android/MEP/PayPalInvoiceData;)V

    invoke-virtual {p1}, Lcom/paypal/android/MEP/PayPalPayment;->getPaymentType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setPaymentType(I)V

    invoke-virtual {p1}, Lcom/paypal/android/MEP/PayPalPayment;->getPaymentSubtype()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setPaymentSubtype(I)V

    invoke-virtual {p1}, Lcom/paypal/android/MEP/PayPalPayment;->getMemo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/paypal/android/MEP/PayPalPayment;->getCustomID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setCustomID(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/paypal/android/MEP/PayPalPayment;->getMerchantName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setMerchantName(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setIsPrimary(Z)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/paypal/android/MEP/PayPal;->checkout(Lcom/paypal/android/MEP/PayPalAdvancedPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PaymentAdjuster;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final deinitialize()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {}, Lcom/paypal/android/a/b;->d()V

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    sput-object v0, Lcom/paypal/android/MEP/PayPal;->f:Lcom/paypal/android/c/a;

    return-void
.end method

.method public final getAccountCountryDialingCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->i:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/paypal/android/a/b;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getAccountEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->d:Lcom/paypal/android/MEP/PayPal$b;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/MEP/PayPal;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->d:Lcom/paypal/android/MEP/PayPal$b;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/MEP/PayPal;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAccountPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->d:Lcom/paypal/android/MEP/PayPal$b;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdjustPaymentError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ANDROID_calc_error"

    invoke-static {v0}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getAppID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthMethod()I
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->d:Lcom/paypal/android/MEP/PayPal$b;

    iget v0, v0, Lcom/paypal/android/MEP/PayPal$b;->d:I

    return v0
.end method

.method public final getAuthSetting()I
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->d:Lcom/paypal/android/MEP/PayPal$b;

    iget v0, v0, Lcom/paypal/android/MEP/PayPal$b;->e:I

    return v0
.end method

.method public final getCancelUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getCheckoutButton(Landroid/content/Context;II)Lcom/paypal/android/MEP/CheckoutButton;
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    new-instance v1, Lcom/paypal/android/MEP/CheckoutButton;

    invoke-direct {v1, p1}, Lcom/paypal/android/MEP/CheckoutButton;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/paypal/android/MEP/PayPal$a;->c:Lcom/paypal/android/MEP/CheckoutButton;

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->c:Lcom/paypal/android/MEP/CheckoutButton;

    invoke-virtual {v0, p2, p3}, Lcom/paypal/android/MEP/CheckoutButton;->a(II)V

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iput p3, v0, Lcom/paypal/android/MEP/PayPal$a;->k:I

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->c:Lcom/paypal/android/MEP/CheckoutButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/CheckoutButton;->setActive(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->c:Lcom/paypal/android/MEP/CheckoutButton;

    return-object v0
.end method

.method public final getDensity()F
    .locals 1

    invoke-virtual {p0}, Lcom/paypal/android/MEP/PayPal;->getParentContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public final getDeviceReferenceToken()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/paypal/android/a/m;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDynamicAmountCalculationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-boolean v0, v0, Lcom/paypal/android/MEP/PayPal$a;->n:Z

    return v0
.end method

.method public final getFeesPayer()I
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget v0, v0, Lcom/paypal/android/MEP/PayPal$a;->l:I

    return v0
.end method

.method public final getFlowContext()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIsRememberMe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/MEP/PayPal;->g:Z

    return v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->d:Landroid/content/Context;

    return-object v0
.end method

.method public final getPayType()I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v1, v1, Lcom/paypal/android/MEP/PayPal$a;->a:Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v1, v1, Lcom/paypal/android/MEP/PayPal$a;->b:Lcom/paypal/android/MEP/PayPalPreapproval;

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v1, v1, Lcom/paypal/android/MEP/PayPal$a;->a:Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v1, v1, Lcom/paypal/android/MEP/PayPal$a;->a:Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->hasPrimaryReceiever()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final getPayment()Lcom/paypal/android/MEP/PayPalAdvancedPayment;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->a:Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    return-object v0
.end method

.method public final getPreapproval()Lcom/paypal/android/MEP/PayPalPreapproval;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->b:Lcom/paypal/android/MEP/PayPalPreapproval;

    return-object v0
.end method

.method public final getPreapprovalKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getReturnUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getServer()I
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget v0, v0, Lcom/paypal/android/MEP/PayPal$a;->j:I

    return v0
.end method

.method public final getSessionToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getShippingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-boolean v0, v0, Lcom/paypal/android/MEP/PayPal$a;->m:Z

    return v0
.end method

.method public final getTextType()I
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget v0, v0, Lcom/paypal/android/MEP/PayPal$a;->k:I

    return v0
.end method

.method public final hasCreatedPIN()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->d:Lcom/paypal/android/MEP/PayPal$b;

    iget-boolean v0, v0, Lcom/paypal/android/MEP/PayPal$b;->f:Z

    return v0
.end method

.method public final isHeavyCountry()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GBR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ESP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ITA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FRA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SGP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MYS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLibraryInitialized()Z
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final isLightCountry()Z
    .locals 1

    invoke-virtual {p0}, Lcom/paypal/android/MEP/PayPal;->isHeavyCountry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPersonalPayment()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->a:Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->a:Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->a:Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getPaymentType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final onInitializeCompletedError(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final onInitializeCompletedOK(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final preapprove(Lcom/paypal/android/MEP/PayPalPreapproval;Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/paypal/android/MEP/PayPal;->preapprove(Lcom/paypal/android/MEP/PayPalPreapproval;Landroid/content/Context;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final preapprove(Lcom/paypal/android/MEP/PayPalPreapproval;Landroid/content/Context;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iput-object p1, v0, Lcom/paypal/android/MEP/PayPal$a;->b:Lcom/paypal/android/MEP/PayPalPreapproval;

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/paypal/android/MEP/PayPal$a;->a:Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/MEP/PayPalActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.paypal.android.PAYPAL_PREAPPROVAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string v1, "com.paypal.android.RESULT_DELEGATE"

    check-cast p3, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public final resetAccount()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/paypal/android/MEP/PayPal;->g:Z

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->d:Lcom/paypal/android/MEP/PayPal$b;

    iget-object v1, v0, Lcom/paypal/android/MEP/PayPal$b;->g:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v1, v3}, Lcom/paypal/android/MEP/PayPal;->setAccountName(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/paypal/android/MEP/PayPal$b;->g:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v1, v3}, Lcom/paypal/android/MEP/PayPal;->setAccountEmail(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/paypal/android/MEP/PayPal$b;->g:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v1, v3}, Lcom/paypal/android/MEP/PayPal;->setAccountPhone(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/paypal/android/MEP/PayPal$b;->g:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPal;->setAuthMethod(I)V

    iget-object v1, v0, Lcom/paypal/android/MEP/PayPal$b;->g:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPal;->setAuthSetting(I)V

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$b;->g:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v0, v2}, Lcom/paypal/android/MEP/PayPal;->setPINCreated(Z)V

    return-void
.end method

.method public final setAccountCountryDialingCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPal;->i:Ljava/lang/String;

    return-void
.end method

.method public final setAccountEmail(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->d:Lcom/paypal/android/MEP/PayPal$b;

    iput-object p1, v0, Lcom/paypal/android/MEP/PayPal$b;->b:Ljava/lang/String;

    return-void
.end method

.method public final setAccountName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->d:Lcom/paypal/android/MEP/PayPal$b;

    iput-object p1, v0, Lcom/paypal/android/MEP/PayPal$b;->a:Ljava/lang/String;

    return-void
.end method

.method public final setAccountPhone(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->d:Lcom/paypal/android/MEP/PayPal$b;

    iput-object p1, v0, Lcom/paypal/android/MEP/PayPal$b;->c:Ljava/lang/String;

    return-void
.end method

.method public final setAdjustPaymentError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPal;->h:Ljava/lang/String;

    return-void
.end method

.method public final setAuthMethod(I)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->d:Lcom/paypal/android/MEP/PayPal$b;

    iput p1, v0, Lcom/paypal/android/MEP/PayPal$b;->d:I

    return-void
.end method

.method public final setAuthSetting(I)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->d:Lcom/paypal/android/MEP/PayPal$b;

    iput p1, v0, Lcom/paypal/android/MEP/PayPal$b;->e:I

    return-void
.end method

.method public final setCancelUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iput-object p1, v0, Lcom/paypal/android/MEP/PayPal$a;->h:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceReferenceToken(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setDynamicAmountCalculationEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iput-boolean p1, v0, Lcom/paypal/android/MEP/PayPal$a;->n:Z

    return-void
.end method

.method public final setFeesPayer(I)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iput p1, v0, Lcom/paypal/android/MEP/PayPal$a;->l:I

    return-void
.end method

.method public final setIsRememberMe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/paypal/android/MEP/PayPal;->g:Z

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/paypal/android/a/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "en_US"

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iput-object p1, v0, Lcom/paypal/android/MEP/PayPal$a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/a/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final setLibraryInitialized(Z)V
    .locals 3

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/paypal/android/MEP/PayPal;->e:Ljava/lang/Boolean;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setPINCreated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->d:Lcom/paypal/android/MEP/PayPal$b;

    iput-boolean p1, v0, Lcom/paypal/android/MEP/PayPal$b;->f:Z

    return-void
.end method

.method public final setPreapprovalKey(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iput-object p1, v0, Lcom/paypal/android/MEP/PayPal$a;->f:Ljava/lang/String;

    return-void
.end method

.method public final setReturnUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iput-object p1, v0, Lcom/paypal/android/MEP/PayPal$a;->i:Ljava/lang/String;

    return-void
.end method

.method public final setSessionToken(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setShippingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    iput-boolean p1, v0, Lcom/paypal/android/MEP/PayPal$a;->m:Z

    return-void
.end method

.method public final shouldShowFees()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/paypal/android/MEP/PayPal;->isPersonalPayment()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public final shutdown()V
    .locals 1

    invoke-static {}, Lcom/paypal/android/a/h;->a()V

    invoke-static {}, Lcom/paypal/android/a/g;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPal;->c:Lcom/paypal/android/MEP/PayPal$a;

    return-void
.end method
