.class public final Lcom/paypal/android/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/paypal/android/a/a/a;

.field public b:Lcom/paypal/android/a/a/a;

.field public c:Lcom/paypal/android/a/a/f;

.field public d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/paypal/android/a/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/w3c/dom/Element;)Lcom/paypal/android/a/a/c;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lcom/paypal/android/a/a/c;

    invoke-direct {v3}, Lcom/paypal/android/a/a/c;-><init>()V

    const-string v0, "fundingPlanId"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-eq v4, v5, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/a/m;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/a/a/c;->e:Ljava/lang/String;

    const-string v0, "fundingAmount"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-eq v4, v5, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/paypal/android/a/a/a;->a(Lorg/w3c/dom/Element;)Lcom/paypal/android/a/a/a;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/a/a/c;->a:Lcom/paypal/android/a/a/a;

    const-string v0, "backupFundingSource"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ne v2, v5, :cond_3

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/paypal/android/a/a/g;->a(Lorg/w3c/dom/Element;)Lcom/paypal/android/a/a/g;

    :cond_3
    const-string v0, "senderFees"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ne v2, v5, :cond_4

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/paypal/android/a/a/a;->a(Lorg/w3c/dom/Element;)Lcom/paypal/android/a/a/a;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/a/a/c;->b:Lcom/paypal/android/a/a/a;

    :cond_4
    const-string v0, "currencyConversion"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ne v2, v5, :cond_5

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/paypal/android/a/a/f;->a(Lorg/w3c/dom/Element;)Lcom/paypal/android/a/a/f;

    move-result-object v0

    iput-object v0, v3, Lcom/paypal/android/a/a/c;->c:Lcom/paypal/android/a/a/f;

    :cond_5
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, v3, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    const-string v0, "charge"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/paypal/android/a/a/k;->a(Lorg/w3c/dom/Element;)Lcom/paypal/android/a/a/k;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v4, v3, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_7
    move-object v0, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/a/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/a/a/c;->e:Ljava/lang/String;

    return-void
.end method
