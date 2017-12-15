.class public final Lcom/tapjoy/o;
.super Ljava/lang/Object;
.source "TJCOffers.java"


# static fields
.field private static c:Lcom/tapjoy/t;

.field private static d:Lcom/tapjoy/g;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/o;->a:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/o;->e:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/o;->f:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/o;->g:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/tapjoy/o;->b:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic a()Lcom/tapjoy/t;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/tapjoy/o;->c:Lcom/tapjoy/t;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 13
    invoke-static {p0}, Lcom/tapjoy/s;->b(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Success"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/s;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TapPoints"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/s;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CurrencyName"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/s;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/o;->c:Lcom/tapjoy/t;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tapjoy/t;->a(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "TapjoyPoints"

    const-string v1, "Invalid XML: Missing tags."

    invoke-static {v0, v1}, Lcom/tapjoy/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "TapjoyPoints"

    const-string v1, "Invalid XML: Missing <Success> tag."

    invoke-static {v0, v1}, Lcom/tapjoy/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b()Lcom/tapjoy/g;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/g;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 13
    invoke-static {p0}, Lcom/tapjoy/s;->b(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Success"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/s;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "TapPoints"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/s;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CurrencyName"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/s;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/g;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/tapjoy/g;->a()V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const-string v0, "TapjoyPoints"

    const-string v1, "Invalid XML: Missing tags."

    invoke-static {v0, v1}, Lcom/tapjoy/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Message"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/s;->a(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyPoints"

    invoke-static {v1, v0}, Lcom/tapjoy/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tapjoy/o;->d:Lcom/tapjoy/g;

    invoke-interface {v1, v0}, Lcom/tapjoy/g;->a(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v0, "TapjoyPoints"

    const-string v1, "Invalid XML: Missing <Success> tag."

    invoke-static {v0, v1}, Lcom/tapjoy/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(ILcom/tapjoy/g;)V
    .locals 2

    .prologue
    .line 132
    if-gez p1, :cond_0

    .line 134
    const-string v0, "TapjoyPoints"

    const-string v1, "spendTapPoints error: amount must be a positive number"

    invoke-static {v0, v1}, Lcom/tapjoy/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/o;->a:Ljava/lang/String;

    .line 140
    sput-object p2, Lcom/tapjoy/o;->d:Lcom/tapjoy/g;

    .line 142
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/d;

    invoke-direct {v1, p0}, Lcom/tapjoy/d;-><init>(Lcom/tapjoy/o;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final a(Lcom/tapjoy/t;)V
    .locals 2

    .prologue
    .line 97
    sput-object p1, Lcom/tapjoy/o;->c:Lcom/tapjoy/t;

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/c;

    invoke-direct {v1, p0}, Lcom/tapjoy/c;-><init>(Lcom/tapjoy/o;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    return-void
.end method
