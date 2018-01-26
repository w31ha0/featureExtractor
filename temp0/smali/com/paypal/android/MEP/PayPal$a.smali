.class final Lcom/paypal/android/MEP/PayPal$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paypal/android/MEP/PayPal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field protected a:Lcom/paypal/android/MEP/PayPalAdvancedPayment;

.field protected b:Lcom/paypal/android/MEP/PayPalPreapproval;

.field protected c:Lcom/paypal/android/MEP/CheckoutButton;

.field protected d:Landroid/content/Context;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:Z

.field protected n:Z


# direct methods
.method public constructor <init>(Lcom/paypal/android/MEP/PayPal;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://www.paypal.com"

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPal$a;->h:Ljava/lang/String;

    const-string v0, "https://www.paypal.com"

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPal$a;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPal$a;->a:Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPal$a;->b:Lcom/paypal/android/MEP/PayPalPreapproval;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPal$a;->c:Lcom/paypal/android/MEP/CheckoutButton;

    return-void
.end method
